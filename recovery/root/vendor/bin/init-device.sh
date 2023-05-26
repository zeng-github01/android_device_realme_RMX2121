#!/system/bin/sh
# This script is needed to automatically set device props.

load_RMX2121CN() 
{
      resetprop "ro.product.device" "RMX2121CN"
      resetprop "ro.product.product.device" "RMX2121CN"
      resetprop "ro.build.product" "RMX2121CN"
      resetprop "ro.product.name" "RMX2121CN"
      resetprop "ro.product.model" "RMX2121"      
      resetprop "ro.product.product.model" "RMX2121"
      resetprop "ro.separate.soft" "20601"
      resetprop "ro.vendor.product.device.oem" "RMX2121"
}

load_RMX2121()
{
      resetprop "ro.product.device" "RMX2121"
      resetprop "ro.product.product.device" "RMX2121"
      resetprop "ro.build.product" "RMX2121"
      resetprop "ro.product.name" "RMX2121"      
      resetprop "ro.product.model" "RMX2121"
      resetprop "ro.product.product.model" "RMX2121"
      resetprop "ro.separate.soft" "20602"
      resetprop "ro.vendor.product.device.oem" "RMX2121"
      rm -rf /vendor/firmware/aw8697_haptic_170.bin
      rm -rf /vendor/firmware/aw8697_haptic_235.bin
      rm -rf /vendor/firmware/aw8697_rtp.bin
}

load_RMX2121IN()
{
      resetprop "ro.product.device" "RMX2121"
      resetprop "ro.product.product.device" "RMX2121"
      resetprop "ro.build.product" "RMX2121"
      resetprop "ro.product.name" "RMX2121"      
      resetprop "ro.product.model" "RMX2121"
      resetprop "ro.product.product.model" "RMX2121"
      resetprop "ro.separate.soft" "20603"
      resetprop "ro.vendor.product.device.oem" "RMX2121"
      rm -rf /vendor/firmware/aw8697_haptic_170.bin
      rm -rf /vendor/firmware/aw8697_haptic_235.bin
      rm -rf /vendor/firmware/aw8697_rtp.bin
}



prjName=$(cat /proc/oplusVersion/prjName)
echo "Running init script with $prjName" >> /tmp/recovery.log

case $prjName in
     "20601")
         load_RMX2121CN
       ;;
     "20602")
         load_RMX2121
              ;;
     "20603")
          load_RMX2121IN
              ;;
esac

exit 0      