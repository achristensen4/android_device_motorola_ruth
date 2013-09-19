# Copyright (C) 2011 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http:/www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

DEVICE_PATH = device/motorola/ruth

DEVICE_PREBUILT := ${DEVICE_PATH}/prebuilt

#key layouts, names must fit the ones in /proc/bus/input/devices, qwerty.kl is the fallback one.
PRODUCT_COPY_FILES += \
	${DEVICE_PREBUILT}/etc/motorola/bp_nvm_default/File_Audio3:/system/etc/motorola/bp_nvm_default/File_Audio3 \
	${DEVICE_PREBUILT}/etc/motorola/bp_nvm_default/File_Audio3_AMR_WB:/system/etc/motorola/bp_nvm_default/File_Audio3_AMR_WB \
	${DEVICE_PREBUILT}/etc/motorola/bp_nvm_default/File_Audio4:/system/etc/motorola/bp_nvm_default/File_Audio4 \
	${DEVICE_PREBUILT}/etc/motorola/bp_nvm_default/File_Audio4_AMR_WB:/system/etc/motorola/bp_nvm_default/File_Audio4_AMR_WB \
	${DEVICE_PREBUILT}/etc/motorola/bp_nvm_default/File_Audio5:/system/etc/motorola/bp_nvm_default/File_Audio5 \
	${DEVICE_PREBUILT}/etc/motorola/bp_nvm_default/File_Audio5_AMR_WB:/system/etc/motorola/bp_nvm_default/File_Audio5_AMR_WB \
	${DEVICE_PREBUILT}/etc/motorola/bp_nvm_default/File_GPRS:/system/etc/motorola/bp_nvm_default/File_GPRS \
	${DEVICE_PREBUILT}/etc/motorola/bp_nvm_default/File_Logger:/system/etc/motorola/bp_nvm_default/File_Logger \
	${DEVICE_PREBUILT}/etc/motorola/bp_nvm_default/File_UMA:/system/etc/motorola/bp_nvm_default/File_UMA \
	${DEVICE_PREBUILT}/etc/motorola/b1b8/File_Audio:/system/etc/motorola/b1b8/File_Audio \
	${DEVICE_PREBUILT}/etc/motorola/b1b8/File_Audio1_AMR_WB:/system/etc/motorola/b1b8/File_Audio1_AMR_WB \
	${DEVICE_PREBUILT}/etc/motorola/b1b8/File_Audio2:/system/etc/motorola/b1b8/File_Audio2 \
	${DEVICE_PREBUILT}/etc/motorola/b1b8/File_Audio2_AMR_WB:/system/etc/motorola/b1b8/File_Audio2_AMR_WB \
	${DEVICE_PREBUILT}/etc/motorola/b1b8/File_Audio6:/system/etc/motorola/b1b8/File_Audio6 \
	${DEVICE_PREBUILT}/etc/motorola/b1b8/File_Audio7:/system/etc/motorola/b1b8/File_Audio7 \
	${DEVICE_PREBUILT}/etc/motorola/b1b8/File_Audio8:/system/etc/motorola/b1b8/File_Audio8 \
	${DEVICE_PREBUILT}/etc/motorola/b1b8/File_GSM:/system/etc/motorola/b1b8/File_GSM \
	${DEVICE_PREBUILT}/etc/motorola/b1b8/File_Seem_Flex_Tables:/system/etc/motorola/b1b8/File_Seem_Flex_Tables \
	${DEVICE_PREBUILT}/etc/motorola/b1b8/sim_lock_init:/system/etc/motorola/b1b8/sim_lock_init \
	${DEVICE_PREBUILT}/app/AudioEffectSettings.apk:system/app/AudioEffectSettings.apk \
	${DEVICE_PREBUILT}/bin/mot_boot_mode:system/bin/mot_boot_mode \
	${DEVICE_PREBUILT}/bin/fixDelSystem.sh:system/bin/fixDelSystem.sh \
	${DEVICE_PREBUILT}/bin/install2ndInit.sh:system/bin/install2ndInit.sh \
	${DEVICE_PREBUILT}/xbin/buttonblink.sh:system/xbin/buttonblink.sh \
	${DEVICE_PREBUILT}/etc/gps.conf:system/etc/gps.conf \
	${DEVICE_PREBUILT}/etc/wifi/tiwlan.ini:system/etc/wifi/tiwlan.ini \
        ${DEVICE_PREBUILT}/etc/wifi/fw_wlan1271.bin:system/etc/wifi/fw_wlan1271.bin \
        ${DEVICE_PREBUILT}/etc/init.d/05mountsd:system/etc/init.d/05mountsd \
        ${DEVICE_PREBUILT}/etc/init.d/99overclock:system/etc/init.d/99overclock \
	${DEVICE_PREBUILT}/framework/com.motorola.android.location.jar:system/framework/com.motorola.android.location.jar \
	${DEVICE_PATH}/mb508/lib/libgki.so:system/lib/libgki.so \
	${DEVICE_PATH}/mb508/lib/libgps.so:system/lib/libgps.so \
	${DEVICE_PATH}/mb508/lib/hw/gps.sage.so:system/lib/hw/gps.ruth.so \
	${DEVICE_PATH}/mb508/lib/hw/gps.goldfish.so:system/lib/hw/gps.goldfish.so \
	${DEVICE_PATH}/mb508/bin/gkilogd:system/bin/gkilogd \
	${DEVICE_PATH}/mb508/bin/gki_pd_notifier:system/bin/gki_pd_notifier \
	${DEVICE_PATH}/mb508/bin/gkisystem:system/bin/gkisystem \
	${DEVICE_PATH}/mb508/app/FMRadio.apk:system/app/FMRadio.apk \
	${DEVICE_PATH}/mb508/app/FMRadioService.apk:system/app/FMRadioService.apk \
	${DEVICE_PATH}/mb508/lib/libOMX.TI.mp4.splt.Encoder.so:system/lib/libOMX.TI.mp4.splt.Encoder.so \
	${DEVICE_PATH}/mb508/lib/dsp/720p_h264vdec_sn.dll64P:system/lib/dsp/720p_h264vdec_sn.dll64P \
	${DEVICE_PATH}/mb508/lib/dsp/720p_h264venc_sn.dll64P:system/lib/dsp/720p_h264venc_sn.dll64P \
	${DEVICE_PATH}/mb508/lib/dsp/720p_mp4venc_sn.dll64P:system/lib/dsp/720p_mp4venc_sn.dll64P \
	${DEVICE_PATH}/mb508/lib/dsp/720p_mp4vdec_sn.dll64P:system/lib/dsp/720p_mp4vdec_sn.dll64P \
	${DEVICE_PATH}/mb508/lib/dsp/wmadec_sn.dll64P:system/lib/dsp/wmadec_sn.dll64P \
	${DEVICE_PATH}/mb508/lib/dsp/wmv9dec_sn.dll64P:system/lib/dsp/wmv9dec_sn.dll64P \
	${DEVICE_PATH}/mb508/lib/libcamera.so:system/lib/libsoccamera.so \
	${DEVICE_PATH}/mb508/mb508/etc/mot_ise_imager_cfg.bin:system/etc/mot_ise_imager_cfg.bin \
#    	${DEVICE_PATH}/mb508/lib/libcamera.so:obj/lib/libcamera.so \

#milestone
PRODUCT_COPY_FILES += \
	${DEVICE_PATH}/cyanogenmod4milestone/bin/handle_bp_panic.sh:system/bin/handle_bp_panic.sh \
	${DEVICE_PATH}/cyanogenmod4milestone/bin/init_bp_nvm.sh:system/bin/init_bp_nvm.sh \
	${DEVICE_PATH}/cyanogenmod4milestone/etc/permissions/motorola_platform.xml:system/etc/permissions/motorola_platform.xml \
	${DEVICE_PATH}/cyanogenmod4milestone/etc/permissions/required_hardware.xml:system/etc/permissions/required_hardware.xml \
	${DEVICE_PATH}/cyanogenmod4milestone/etc/apns-conf.xml:system/etc/apns-conf.xml \
	${DEVICE_PATH}/cyanogenmod4milestone/etc/motorola/b1b2b5_argentina_personal/File_Audio:/system/etc/motorola/b1b2b5_argentina_personal/File_Audio \
	${DEVICE_PATH}/cyanogenmod4milestone/etc/motorola/b1b2b5_argentina_personal/File_Audio1_AMR_WB:/system/etc/motorola/b1b2b5_argentina_personal/File_Audio1_AMR_WB \
	${DEVICE_PATH}/cyanogenmod4milestone/etc/motorola/b1b2b5_argentina_personal/File_Audio2:/system/etc/motorola/b1b2b5_argentina_personal/File_Audio2 \
	${DEVICE_PATH}/cyanogenmod4milestone/etc/motorola/b1b2b5_argentina_personal/File_Audio2_AMR_WB:/system/etc/motorola/b1b2b5_argentina_personal/File_Audio2_AMR_WB \
	${DEVICE_PATH}/cyanogenmod4milestone/etc/motorola/b1b2b5_argentina_personal/File_Audio6:/system/etc/motorola/b1b2b5_argentina_personal/File_Audio6 \
	${DEVICE_PATH}/cyanogenmod4milestone/etc/motorola/b1b2b5_argentina_personal/File_Audio7:/system/etc/motorola/b1b2b5_argentina_personal/File_Audio7 \
	${DEVICE_PATH}/cyanogenmod4milestone/etc/motorola/b1b2b5_argentina_personal/File_GSM:/system/etc/motorola/b1b2b5_argentina_personal/File_GSM \
	${DEVICE_PATH}/cyanogenmod4milestone/etc/motorola/b1b2b5_argentina_personal/File_Seem_Flex_Tables:/system/etc/motorola/b1b2b5_argentina_personal/File_Seem_Flex_Tables \
	${DEVICE_PATH}/cyanogenmod4milestone/etc/motorola/b1b2b5_argentina_personal/generic_pds_init:/system/etc/motorola/b1b2b5_argentina_personal/generic_pds_init \
	${DEVICE_PATH}/cyanogenmod4milestone/etc/motorola/b1b2b5_argentina_personal/sim_lock_init:/system/etc/motorola/b1b2b5_argentina_personal/sim_lock_init \
	${DEVICE_PATH}/cyanogenmod4milestone/etc/motorola/b1b2b5_brazil_claro/File_Audio:/system/etc/motorola/b1b2b5_brazil_claro/File_Audio \
	${DEVICE_PATH}/cyanogenmod4milestone/etc/motorola/b1b2b5_brazil_claro/File_Audio1_AMR_WB:/system/etc/motorola/b1b2b5_brazil_claro/File_Audio1_AMR_WB \
	${DEVICE_PATH}/cyanogenmod4milestone/etc/motorola/b1b2b5_brazil_claro/File_Audio2:/system/etc/motorola/b1b2b5_brazil_claro/File_Audio2 \
	${DEVICE_PATH}/cyanogenmod4milestone/etc/motorola/b1b2b5_brazil_claro/File_Audio2_AMR_WB:/system/etc/motorola/b1b2b5_brazil_claro/File_Audio2_AMR_WB \
	${DEVICE_PATH}/cyanogenmod4milestone/etc/motorola/b1b2b5_brazil_claro/File_Audio6:/system/etc/motorola/b1b2b5_brazil_claro/File_Audio6 \
	${DEVICE_PATH}/cyanogenmod4milestone/etc/motorola/b1b2b5_brazil_claro/File_Audio7:/system/etc/motorola/b1b2b5_brazil_claro/File_Audio7 \
	${DEVICE_PATH}/cyanogenmod4milestone/etc/motorola/b1b2b5_brazil_claro/File_GSM:/system/etc/motorola/b1b2b5_brazil_claro/File_GSM \
	${DEVICE_PATH}/cyanogenmod4milestone/etc/motorola/b1b2b5_brazil_claro/File_Seem_Flex_Tables:/system/etc/motorola/b1b2b5_brazil_claro/File_Seem_Flex_Tables \
	${DEVICE_PATH}/cyanogenmod4milestone/etc/motorola/b1b2b5_brazil_claro/generic_pds_init:/system/etc/motorola/b1b2b5_brazil_claro/generic_pds_init \
	${DEVICE_PATH}/cyanogenmod4milestone/etc/motorola/b1b2b5_brazil_claro/sim_lock_init:/system/etc/motorola/b1b2b5_brazil_claro/sim_lock_init \
	${DEVICE_PATH}/cyanogenmod4milestone/etc/motorola/b1b2b5_brazil_retail/File_Audio:/system/etc/motorola/b1b2b5_brazil_retail/File_Audio \
	${DEVICE_PATH}/cyanogenmod4milestone/etc/motorola/b1b2b5_brazil_retail/File_Audio1_AMR_WB:/system/etc/motorola/b1b2b5_brazil_retail/File_Audio1_AMR_WB \
	${DEVICE_PATH}/cyanogenmod4milestone/etc/motorola/b1b2b5_brazil_retail/File_Audio2:/system/etc/motorola/b1b2b5_brazil_retail/File_Audio2 \
	${DEVICE_PATH}/cyanogenmod4milestone/etc/motorola/b1b2b5_brazil_retail/File_Audio2_AMR_WB:/system/etc/motorola/b1b2b5_brazil_retail/File_Audio2_AMR_WB \
	${DEVICE_PATH}/cyanogenmod4milestone/etc/motorola/b1b2b5_brazil_retail/File_Audio6:/system/etc/motorola/b1b2b5_brazil_retail/File_Audio6 \
	${DEVICE_PATH}/cyanogenmod4milestone/etc/motorola/b1b2b5_brazil_retail/File_Audio7:/system/etc/motorola/b1b2b5_brazil_retail/File_Audio7 \
	${DEVICE_PATH}/cyanogenmod4milestone/etc/motorola/b1b2b5_brazil_retail/File_GSM:/system/etc/motorola/b1b2b5_brazil_retail/File_GSM \
	${DEVICE_PATH}/cyanogenmod4milestone/etc/motorola/b1b2b5_brazil_retail/File_Seem_Flex_Tables:/system/etc/motorola/b1b2b5_brazil_retail/File_Seem_Flex_Tables \
	${DEVICE_PATH}/cyanogenmod4milestone/etc/motorola/b1b2b5_brazil_retail/generic_pds_init:/system/etc/motorola/b1b2b5_brazil_retail/generic_pds_init \
	${DEVICE_PATH}/cyanogenmod4milestone/etc/motorola/b1b2b5_brazil_retail/sim_lock_init:/system/etc/motorola/b1b2b5_brazil_retail/sim_lock_init \
	${DEVICE_PATH}/cyanogenmod4milestone/etc/motorola/b1b2b5_brazil_tim/File_Audio:/system/etc/motorola/b1b2b5_brazil_tim/File_Audio \
	${DEVICE_PATH}/cyanogenmod4milestone/etc/motorola/b1b2b5_brazil_tim/File_Audio1_AMR_WB:/system/etc/motorola/b1b2b5_brazil_tim/File_Audio1_AMR_WB \
	${DEVICE_PATH}/cyanogenmod4milestone/etc/motorola/b1b2b5_brazil_tim/File_Audio2:/system/etc/motorola/b1b2b5_brazil_tim/File_Audio2 \
	${DEVICE_PATH}/cyanogenmod4milestone/etc/motorola/b1b2b5_brazil_tim/File_Audio2_AMR_WB:/system/etc/motorola/b1b2b5_brazil_tim/File_Audio2_AMR_WB \
	${DEVICE_PATH}/cyanogenmod4milestone/etc/motorola/b1b2b5_brazil_tim/File_Audio6:/system/etc/motorola/b1b2b5_brazil_tim/File_Audio6 \
	${DEVICE_PATH}/cyanogenmod4milestone/etc/motorola/b1b2b5_brazil_tim/File_Audio7:/system/etc/motorola/b1b2b5_brazil_tim/File_Audio7 \
	${DEVICE_PATH}/cyanogenmod4milestone/etc/motorola/b1b2b5_brazil_tim/File_GSM:/system/etc/motorola/b1b2b5_brazil_tim/File_GSM \
	${DEVICE_PATH}/cyanogenmod4milestone/etc/motorola/b1b2b5_brazil_tim/File_Seem_Flex_Tables:/system/etc/motorola/b1b2b5_brazil_tim/File_Seem_Flex_Tables \
	${DEVICE_PATH}/cyanogenmod4milestone/etc/motorola/b1b2b5_brazil_tim/generic_pds_init:/system/etc/motorola/b1b2b5_brazil_tim/generic_pds_init \
	${DEVICE_PATH}/cyanogenmod4milestone/etc/motorola/b1b2b5_brazil_tim/sim_lock_init:/system/etc/motorola/b1b2b5_brazil_tim/sim_lock_init \
	${DEVICE_PATH}/cyanogenmod4milestone/etc/motorola/b1b2b5_brazil_vivo/File_Audio:/system/etc/motorola/b1b2b5_brazil_vivo/File_Audio \
	${DEVICE_PATH}/cyanogenmod4milestone/etc/motorola/b1b2b5_brazil_vivo/File_Audio1_AMR_WB:/system/etc/motorola/b1b2b5_brazil_vivo/File_Audio1_AMR_WB \
	${DEVICE_PATH}/cyanogenmod4milestone/etc/motorola/b1b2b5_brazil_vivo/File_Audio2:/system/etc/motorola/b1b2b5_brazil_vivo/File_Audio2 \
	${DEVICE_PATH}/cyanogenmod4milestone/etc/motorola/b1b2b5_brazil_vivo/File_Audio2_AMR_WB:/system/etc/motorola/b1b2b5_brazil_vivo/File_Audio2_AMR_WB \
	${DEVICE_PATH}/cyanogenmod4milestone/etc/motorola/b1b2b5_brazil_vivo/File_Audio6:/system/etc/motorola/b1b2b5_brazil_vivo/File_Audio6 \
	${DEVICE_PATH}/cyanogenmod4milestone/etc/motorola/b1b2b5_brazil_vivo/File_Audio7:/system/etc/motorola/b1b2b5_brazil_vivo/File_Audio7 \
	${DEVICE_PATH}/cyanogenmod4milestone/etc/motorola/b1b2b5_brazil_vivo/File_GSM:/system/etc/motorola/b1b2b5_brazil_vivo/File_GSM \
	${DEVICE_PATH}/cyanogenmod4milestone/etc/motorola/b1b2b5_brazil_vivo/File_Seem_Flex_Tables:/system/etc/motorola/b1b2b5_brazil_vivo/File_Seem_Flex_Tables \
	${DEVICE_PATH}/cyanogenmod4milestone/etc/motorola/b1b2b5_brazil_vivo/generic_pds_init:/system/etc/motorola/b1b2b5_brazil_vivo/generic_pds_init \
	${DEVICE_PATH}/cyanogenmod4milestone/etc/motorola/b1b2b5_brazil_vivo/sim_lock_init:/system/etc/motorola/b1b2b5_brazil_vivo/sim_lock_init \
	${DEVICE_PATH}/cyanogenmod4milestone/etc/motorola/b1b2b5_canada_telus/File_Audio:/system/etc/motorola/b1b2b5_canada_telus/File_Audio \
	${DEVICE_PATH}/cyanogenmod4milestone/etc/motorola/b1b2b5_canada_telus/File_Audio1_AMR_WB:/system/etc/motorola/b1b2b5_canada_telus/File_Audio1_AMR_WB \
	${DEVICE_PATH}/cyanogenmod4milestone/etc/motorola/b1b2b5_canada_telus/File_Audio2:/system/etc/motorola/b1b2b5_canada_telus/File_Audio2 \
	${DEVICE_PATH}/cyanogenmod4milestone/etc/motorola/b1b2b5_canada_telus/File_Audio2_AMR_WB:/system/etc/motorola/b1b2b5_canada_telus/File_Audio2_AMR_WB \
	${DEVICE_PATH}/cyanogenmod4milestone/etc/motorola/b1b2b5_canada_telus/File_Audio6:/system/etc/motorola/b1b2b5_canada_telus/File_Audio6 \
	${DEVICE_PATH}/cyanogenmod4milestone/etc/motorola/b1b2b5_canada_telus/File_Audio7:/system/etc/motorola/b1b2b5_canada_telus/File_Audio7 \
	${DEVICE_PATH}/cyanogenmod4milestone/etc/motorola/b1b2b5_canada_telus/File_GSM:/system/etc/motorola/b1b2b5_canada_telus/File_GSM \
	${DEVICE_PATH}/cyanogenmod4milestone/etc/motorola/b1b2b5_canada_telus/File_Seem_Flex_Tables:/system/etc/motorola/b1b2b5_canada_telus/File_Seem_Flex_Tables \
	${DEVICE_PATH}/cyanogenmod4milestone/etc/motorola/b1b2b5_canada_telus/generic_pds_init:/system/etc/motorola/b1b2b5_canada_telus/generic_pds_init \
	${DEVICE_PATH}/cyanogenmod4milestone/etc/motorola/b1b2b5_canada_telus/sim_lock_init:/system/etc/motorola/b1b2b5_canada_telus/sim_lock_init \
	${DEVICE_PATH}/cyanogenmod4milestone/etc/motorola/b1b2b5_china_retail/File_Audio:/system/etc/motorola/b1b2b5_china_retail/File_Audio \
	${DEVICE_PATH}/cyanogenmod4milestone/etc/motorola/b1b2b5_china_retail/File_Audio1_AMR_WB:/system/etc/motorola/b1b2b5_china_retail/File_Audio1_AMR_WB \
	${DEVICE_PATH}/cyanogenmod4milestone/etc/motorola/b1b2b5_china_retail/File_Audio2:/system/etc/motorola/b1b2b5_china_retail/File_Audio2 \
	${DEVICE_PATH}/cyanogenmod4milestone/etc/motorola/b1b2b5_china_retail/File_Audio2_AMR_WB:/system/etc/motorola/b1b2b5_china_retail/File_Audio2_AMR_WB \
	${DEVICE_PATH}/cyanogenmod4milestone/etc/motorola/b1b2b5_china_retail/File_Audio6:/system/etc/motorola/b1b2b5_china_retail/File_Audio6 \
	${DEVICE_PATH}/cyanogenmod4milestone/etc/motorola/b1b2b5_china_retail/File_Audio7:/system/etc/motorola/b1b2b5_china_retail/File_Audio7 \
	${DEVICE_PATH}/cyanogenmod4milestone/etc/motorola/b1b2b5_china_retail/File_GSM:/system/etc/motorola/b1b2b5_china_retail/File_GSM \
	${DEVICE_PATH}/cyanogenmod4milestone/etc/motorola/b1b2b5_china_retail/File_Seem_Flex_Tables:/system/etc/motorola/b1b2b5_china_retail/File_Seem_Flex_Tables \
	${DEVICE_PATH}/cyanogenmod4milestone/etc/motorola/b1b2b5_china_retail/generic_pds_init:/system/etc/motorola/b1b2b5_china_retail/generic_pds_init \
	${DEVICE_PATH}/cyanogenmod4milestone/etc/motorola/b1b2b5_latam_movistar/File_Audio:/system/etc/motorola/b1b2b5_latam_movistar/File_Audio \
	${DEVICE_PATH}/cyanogenmod4milestone/etc/motorola/b1b2b5_latam_movistar/File_Audio1_AMR_WB:/system/etc/motorola/b1b2b5_latam_movistar/File_Audio1_AMR_WB \
	${DEVICE_PATH}/cyanogenmod4milestone/etc/motorola/b1b2b5_latam_movistar/File_Audio2:/system/etc/motorola/b1b2b5_latam_movistar/File_Audio2 \
	${DEVICE_PATH}/cyanogenmod4milestone/etc/motorola/b1b2b5_latam_movistar/File_Audio2_AMR_WB:/system/etc/motorola/b1b2b5_latam_movistar/File_Audio2_AMR_WB \
	${DEVICE_PATH}/cyanogenmod4milestone/etc/motorola/b1b2b5_latam_movistar/File_Audio6:/system/etc/motorola/b1b2b5_latam_movistar/File_Audio6 \
	${DEVICE_PATH}/cyanogenmod4milestone/etc/motorola/b1b2b5_latam_movistar/File_Audio7:/system/etc/motorola/b1b2b5_latam_movistar/File_Audio7 \
	${DEVICE_PATH}/cyanogenmod4milestone/etc/motorola/b1b2b5_latam_movistar/File_GSM:/system/etc/motorola/b1b2b5_latam_movistar/File_GSM \
	${DEVICE_PATH}/cyanogenmod4milestone/etc/motorola/b1b2b5_latam_movistar/File_Seem_Flex_Tables:/system/etc/motorola/b1b2b5_latam_movistar/File_Seem_Flex_Tables \
	${DEVICE_PATH}/cyanogenmod4milestone/etc/motorola/b1b2b5_latam_movistar/generic_pds_init:/system/etc/motorola/b1b2b5_latam_movistar/generic_pds_init \
	${DEVICE_PATH}/cyanogenmod4milestone/etc/motorola/b1b2b5_latam_movistar/sim_lock_init:/system/etc/motorola/b1b2b5_latam_movistar/sim_lock_init \
	${DEVICE_PATH}/cyanogenmod4milestone/etc/motorola/b1b2b5_latam_retail/File_Audio:/system/etc/motorola/b1b2b5_latam_retail/File_Audio \
	${DEVICE_PATH}/cyanogenmod4milestone/etc/motorola/b1b2b5_latam_retail/File_Audio1_AMR_WB:/system/etc/motorola/b1b2b5_latam_retail/File_Audio1_AMR_WB \
	${DEVICE_PATH}/cyanogenmod4milestone/etc/motorola/b1b2b5_latam_retail/File_Audio2:/system/etc/motorola/b1b2b5_latam_retail/File_Audio2 \
	${DEVICE_PATH}/cyanogenmod4milestone/etc/motorola/b1b2b5_latam_retail/File_Audio2_AMR_WB:/system/etc/motorola/b1b2b5_latam_retail/File_Audio2_AMR_WB \
	${DEVICE_PATH}/cyanogenmod4milestone/etc/motorola/b1b2b5_latam_retail/File_Audio6:/system/etc/motorola/b1b2b5_latam_retail/File_Audio6 \
	${DEVICE_PATH}/cyanogenmod4milestone/etc/motorola/b1b2b5_latam_retail/File_Audio7:/system/etc/motorola/b1b2b5_latam_retail/File_Audio7 \
	${DEVICE_PATH}/cyanogenmod4milestone/etc/motorola/b1b2b5_latam_retail/File_GSM:/system/etc/motorola/b1b2b5_latam_retail/File_GSM \
	${DEVICE_PATH}/cyanogenmod4milestone/etc/motorola/b1b2b5_latam_retail/File_Seem_Flex_Tables:/system/etc/motorola/b1b2b5_latam_retail/File_Seem_Flex_Tables \
	${DEVICE_PATH}/cyanogenmod4milestone/etc/motorola/b1b2b5_latam_retail/generic_pds_init:/system/etc/motorola/b1b2b5_latam_retail/generic_pds_init \
	${DEVICE_PATH}/cyanogenmod4milestone/etc/motorola/b1b2b5_latam_retail/sim_lock_init:/system/etc/motorola/b1b2b5_latam_retail/sim_lock_init \
	${DEVICE_PATH}/cyanogenmod4milestone/etc/motorola/b1b2b5_newzealand_retail/File_Audio:/system/etc/motorola/b1b2b5_newzealand_retail/File_Audio \
	${DEVICE_PATH}/cyanogenmod4milestone/etc/motorola/b1b2b5_newzealand_retail/File_Audio1_AMR_WB:/system/etc/motorola/b1b2b5_newzealand_retail/File_Audio1_AMR_WB \
	${DEVICE_PATH}/cyanogenmod4milestone/etc/motorola/b1b2b5_newzealand_retail/File_Audio2:/system/etc/motorola/b1b2b5_newzealand_retail/File_Audio2 \
	${DEVICE_PATH}/cyanogenmod4milestone/etc/motorola/b1b2b5_newzealand_retail/File_Audio2_AMR_WB:/system/etc/motorola/b1b2b5_newzealand_retail/File_Audio2_AMR_WB \
	${DEVICE_PATH}/cyanogenmod4milestone/etc/motorola/b1b2b5_newzealand_retail/File_Audio6:/system/etc/motorola/b1b2b5_newzealand_retail/File_Audio6 \
	${DEVICE_PATH}/cyanogenmod4milestone/etc/motorola/b1b2b5_newzealand_retail/File_Audio7:/system/etc/motorola/b1b2b5_newzealand_retail/File_Audio7 \
	${DEVICE_PATH}/cyanogenmod4milestone/etc/motorola/b1b2b5_newzealand_retail/File_GSM:/system/etc/motorola/b1b2b5_newzealand_retail/File_GSM \
	${DEVICE_PATH}/cyanogenmod4milestone/etc/motorola/b1b2b5_newzealand_retail/File_Seem_Flex_Tables:/system/etc/motorola/b1b2b5_newzealand_retail/File_Seem_Flex_Tables \
	${DEVICE_PATH}/cyanogenmod4milestone/etc/motorola/b1b2b5_newzealand_retail/generic_pds_init:/system/etc/motorola/b1b2b5_newzealand_retail/generic_pds_init \
	${DEVICE_PATH}/cyanogenmod4milestone/etc/motorola/b1b2b5_thailand_truemove/File_Audio:/system/etc/motorola/b1b2b5_thailand_truemove/File_Audio \
	${DEVICE_PATH}/cyanogenmod4milestone/etc/motorola/b1b2b5_thailand_truemove/File_Audio1_AMR_WB:/system/etc/motorola/b1b2b5_thailand_truemove/File_Audio1_AMR_WB \
	${DEVICE_PATH}/cyanogenmod4milestone/etc/motorola/b1b2b5_thailand_truemove/File_Audio2:/system/etc/motorola/b1b2b5_thailand_truemove/File_Audio2 \
	${DEVICE_PATH}/cyanogenmod4milestone/etc/motorola/b1b2b5_thailand_truemove/File_Audio2_AMR_WB:/system/etc/motorola/b1b2b5_thailand_truemove/File_Audio2_AMR_WB \
	${DEVICE_PATH}/cyanogenmod4milestone/etc/motorola/b1b2b5_thailand_truemove/File_Audio6:/system/etc/motorola/b1b2b5_thailand_truemove/File_Audio6 \
	${DEVICE_PATH}/cyanogenmod4milestone/etc/motorola/b1b2b5_thailand_truemove/File_Audio7:/system/etc/motorola/b1b2b5_thailand_truemove/File_Audio7 \
	${DEVICE_PATH}/cyanogenmod4milestone/etc/motorola/b1b2b5_thailand_truemove/File_GSM:/system/etc/motorola/b1b2b5_thailand_truemove/File_GSM \
	${DEVICE_PATH}/cyanogenmod4milestone/etc/motorola/b1b2b5_thailand_truemove/File_Seem_Flex_Tables:/system/etc/motorola/b1b2b5_thailand_truemove/File_Seem_Flex_Tables \
	${DEVICE_PATH}/cyanogenmod4milestone/etc/motorola/b1b2b5_thailand_truemove/generic_pds_init:/system/etc/motorola/b1b2b5_thailand_truemove/generic_pds_init \
	${DEVICE_PATH}/cyanogenmod4milestone/etc/motorola/b1b2b5_venezuela_movilnet/File_Audio:/system/etc/motorola/b1b2b5_venezuela_movilnet/File_Audio \
	${DEVICE_PATH}/cyanogenmod4milestone/etc/motorola/b1b2b5_venezuela_movilnet/File_Audio1_AMR_WB:/system/etc/motorola/b1b2b5_venezuela_movilnet/File_Audio1_AMR_WB \
	${DEVICE_PATH}/cyanogenmod4milestone/etc/motorola/b1b2b5_venezuela_movilnet/File_Audio2:/system/etc/motorola/b1b2b5_venezuela_movilnet/File_Audio2 \
	${DEVICE_PATH}/cyanogenmod4milestone/etc/motorola/b1b2b5_venezuela_movilnet/File_Audio2_AMR_WB:/system/etc/motorola/b1b2b5_venezuela_movilnet/File_Audio2_AMR_WB \
	${DEVICE_PATH}/cyanogenmod4milestone/etc/motorola/b1b2b5_venezuela_movilnet/File_Audio6:/system/etc/motorola/b1b2b5_venezuela_movilnet/File_Audio6 \
	${DEVICE_PATH}/cyanogenmod4milestone/etc/motorola/b1b2b5_venezuela_movilnet/File_Audio7:/system/etc/motorola/b1b2b5_venezuela_movilnet/File_Audio7 \
	${DEVICE_PATH}/cyanogenmod4milestone/etc/motorola/b1b2b5_venezuela_movilnet/File_GSM:/system/etc/motorola/b1b2b5_venezuela_movilnet/File_GSM \
	${DEVICE_PATH}/cyanogenmod4milestone/etc/motorola/b1b2b5_venezuela_movilnet/File_Seem_Flex_Tables:/system/etc/motorola/b1b2b5_venezuela_movilnet/File_Seem_Flex_Tables \
	${DEVICE_PATH}/cyanogenmod4milestone/etc/motorola/b1b2b5_venezuela_movilnet/generic_pds_init:/system/etc/motorola/b1b2b5_venezuela_movilnet/generic_pds_init \
	${DEVICE_PATH}/cyanogenmod4milestone/etc/motorola/b1b2b5_venezuela_movilnet/sim_lock_init:/system/etc/motorola/b1b2b5_venezuela_movilnet/sim_lock_init

#	${DEVICE_PATH}/cyanogenmod4milestone/lib/libaudio.so:obj/lib/libaudio.so \
#	${DEVICE_PATH}/cyanogenmod4milestone/lib/libaudio.so:system/lib/libaudio.so \

#XT720
PRODUCT_COPY_FILES += \
	${DEVICE_PATH}/CyanogenModXT720/etc/wifi/softap/hostapd.conf:system/etc/wifi/softap/hostapd.conf \
	${DEVICE_PATH}/CyanogenModXT720/etc/wifi/softap/tiwlan_ap.ini:system/etc/wifi/softap/tiwlan_ap.ini \
	${DEVICE_PATH}/CyanogenModXT720/etc/wifi/hostapd.conf.templet:system/etc/wifi/hostapd.conf.templet \
	${DEVICE_PATH}/CyanogenModXT720/etc/wifi/fw_tiwlan_ap.bin:system/etc/wifi/fw_tiwlan_ap.bin \
	${DEVICE_PATH}/CyanogenModXT720/etc/wifi/tiwlan_ap.ini:system/etc/wifi/tiwlan_ap.ini \
	${DEVICE_PATH}/CyanogenModXT720/lib/modules/ext4.ko:system/lib/modules/ext4.ko \
	${DEVICE_PATH}/CyanogenModXT720/lib/modules/crc16.ko:system/lib/modules/crc16.ko \
	${DEVICE_PATH}/CyanogenModXT720/lib/modules/mbcache.ko:system/lib/modules/mbcache.ko \
	${DEVICE_PATH}/CyanogenModXT720/lib/modules/cpufreq_smartass.ko:system/lib/modules/cpufreq_smartass.ko \
	${DEVICE_PATH}/CyanogenModXT720/lib/modules/symsearch.ko:system/lib/modules/symsearch.ko \
	${DEVICE_PATH}/CyanogenModXT720/lib/modules/mmcfix.ko:system/lib/modules/mmcfix.ko \
	${DEVICE_PATH}/CyanogenModXT720/lib/modules/jbd.ko:system/lib/modules/jbd.ko \
	${DEVICE_PATH}/CyanogenModXT720/lib/modules/ext3.ko:system/lib/modules/ext3.ko \
	${DEVICE_PATH}/CyanogenModXT720/lib/modules/jbd2.ko:system/lib/modules/jbd2.ko \
	${DEVICE_PATH}/CyanogenModXT720/lib/modules/thumbee.ko:system/lib/modules/thumbee.ko \
	${DEVICE_PATH}/CyanogenModXT720/lib/libaudio.so:system/lib/libaudio.so \
	${DEVICE_PATH}/CyanogenModXT720/lib/libOMX.TI.720P.Decoder.so:system/lib/libOMX.TI.720P.Decoder.so \
	${DEVICE_PATH}/CyanogenModXT720/lib/libOMX.TI.720P.Encoder.so:system/lib/libOMX.TI.720P.Encoder.so \
	${DEVICE_PATH}/CyanogenModXT720/lib/libaudio.so:obj/lib/libaudio.so \
	${DEVICE_PATH}/CyanogenModXT720/lib/dsp/jpegenc_sn.dll64P:system/lib/dsp/jpegenc_sn.dll64P \
	${DEVICE_PATH}/CyanogenModXT720/lib/dsp/h264venc_sn.dll64P:system/lib/dsp/h264venc_sn.dll64P \
	${DEVICE_PATH}/CyanogenModXT720/lib/dsp/nbamrenc_sn.dll64P:system/lib/dsp/nbamrenc_sn.dll64P \
	${DEVICE_PATH}/CyanogenModXT720/lib/dsp/usn.dll64P:system/lib/dsp/usn.dll64P \
	${DEVICE_PATH}/CyanogenModXT720/lib/dsp/mpeg4aacdec_sn.dll64P:system/lib/dsp/mpeg4aacdec_sn.dll64P \
	${DEVICE_PATH}/CyanogenModXT720/lib/dsp/nbamrdec_sn.dll64P:system/lib/dsp/nbamrdec_sn.dll64P \
	${DEVICE_PATH}/CyanogenModXT720/lib/dsp/h264vdec_sn.dll64P:system/lib/dsp/h264vdec_sn.dll64P \
	${DEVICE_PATH}/CyanogenModXT720/lib/dsp/mpeg4aacenc_sn.dll64P:system/lib/dsp/mpeg4aacenc_sn.dll64P \
	${DEVICE_PATH}/CyanogenModXT720/lib/dsp/mp4vdec_sn.dll64P:system/lib/dsp/mp4vdec_sn.dll64P \
	${DEVICE_PATH}/CyanogenModXT720/lib/dsp/conversions.dll64P:system/lib/dsp/conversions.dll64P \
	${DEVICE_PATH}/CyanogenModXT720/lib/dsp/mp3dec_sn.dll64P:system/lib/dsp/mp3dec_sn.dll64P \
	${DEVICE_PATH}/CyanogenModXT720/lib/dsp/postprocessor_dualout.dll64P:system/lib/dsp/postprocessor_dualout.dll64P \
	${DEVICE_PATH}/CyanogenModXT720/lib/dsp/m4venc_sn.dll64P:system/lib/dsp/m4venc_sn.dll64P \
	${DEVICE_PATH}/CyanogenModXT720/lib/dsp/wbamrdec_sn.dll64P:system/lib/dsp/wbamrdec_sn.dll64P \
	${DEVICE_PATH}/CyanogenModXT720/lib/dsp/ringio.dll64P:system/lib/dsp/ringio.dll64P \
	${DEVICE_PATH}/CyanogenModXT720/lib/dsp/wbamrenc_sn.dll64P:system/lib/dsp/wbamrenc_sn.dll64P \
	${DEVICE_PATH}/CyanogenModXT720/lib/dsp/baseimage.dof:system/lib/dsp/baseimage.dof \

# copy all of our kernel modules under the "modules" directory to system/lib/modules
PRODUCT_COPY_FILES += $(shell test -d device/motorola/ruth && \
	find device/motorola/ruth/modules -name '*.ko' \
	-printf '%p:system/lib/modules/%f ')

