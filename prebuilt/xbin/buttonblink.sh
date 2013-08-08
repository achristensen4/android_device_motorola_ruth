#!/system/bin/sh


while [ true ]
do
    blink=$(cat /sys/class/leds/button-backlight/blink)
    if [ "$blink" != "0x0" ]; then
        brightness=$(cat /sys/class/leds/button-backlight/brightness)
        if [ "$brightness" == "0" ]; then
            echo 255 > /sys/class/leds/button-backlight/brightness
        fi
    fi
    sleep 2s
done
