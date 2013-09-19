package com.cyanogenmod.mmparts;

import java.util.ArrayList;

import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.os.SystemProperties;
import android.preference.CheckBoxPreference;
import android.preference.ListPreference;
import android.preference.Preference;
import android.preference.Preference.OnPreferenceChangeListener;
import android.preference.PreferenceActivity;
import android.preference.PreferenceCategory;
import android.preference.PreferenceScreen;
import android.provider.Settings;

public class SettingsActivity extends PreferenceActivity implements
        OnPreferenceChangeListener {   

    private static final String BASEBAND_PREF = "pref_baseband";

    private static final String BASEBAND_PERSIST_PROP = "persist.sys.bp_nvm";

    private static final String BASEBAND_DEFAULT = "b1b8";

    private static final String QTOUCH_NUM_PREF = "pref_qtouch_num";

    private static final String QTOUCH_NUM_PERSIST_PROP = "persist.sys.qtouch_num";

    private static final String QTOUCH_NUM_DEFAULT = "2";

    private CheckBoxPreference mDockObserverOffPref;

    private String mBasebandSum;    

    private ListPreference mBasebandPref;   

    private ListPreference mQtouchNumPref;

    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        addPreferencesFromResource(R.xml.settings);

        PreferenceScreen prefSet = getPreferenceScreen();

        mBasebandSum = getString(R.string.pref_baseband_summary);
       
        mBasebandPref = (ListPreference) prefSet.findPreference(BASEBAND_PREF);
        String baseband = SystemProperties.get(BASEBAND_PERSIST_PROP, BASEBAND_DEFAULT);
        mBasebandPref.setValue(baseband);
        mBasebandPref.setSummary(String.format(mBasebandSum, mBasebandPref.getEntry()));
        mBasebandPref.setOnPreferenceChangeListener(this);

        mQtouchNumPref = (ListPreference) prefSet.findPreference(QTOUCH_NUM_PREF);
        String qtouchNum = SystemProperties.get(QTOUCH_NUM_PERSIST_PROP, QTOUCH_NUM_DEFAULT);
        mQtouchNumPref.setValue(qtouchNum);
        mQtouchNumPref.setOnPreferenceChangeListener(this);        
    }

    @Override
    public void onResume() {
        super.onResume();
        mBasebandPref.setSummary(String.format(mBasebandSum, mBasebandPref.getEntry()));        
    }

    private void keypadChanged() {

        class SendBroadcast extends Handler {
            @Override
            public void handleMessage(Message msg) {
                Intent i = new Intent();
                i.setAction("hw.keycharmap.change");
                sendBroadcast(i);
            }
        }

        Handler broadcastHandler = new SendBroadcast();
        Message m = new Message();
        broadcastHandler.sendMessageDelayed(m, 200);

    }

    public boolean onPreferenceChange(Preference preference, Object newValue) {
        if (preference == mBasebandPref) {
            String baseband = (String) newValue;
            SystemProperties.set(BASEBAND_PERSIST_PROP, baseband);
            mBasebandPref.setSummary(String.format(mBasebandSum,
                    mBasebandPref.getEntries()[mBasebandPref.findIndexOfValue(baseband)]));
            return true;
        } else if (preference == mQtouchNumPref) {
            String qtouchNum = (String) newValue;
            SystemProperties.set(QTOUCH_NUM_PERSIST_PROP, qtouchNum);
            return true;
        }
        return false;
    }

}
