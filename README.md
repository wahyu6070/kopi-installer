# kopi installer
kopi installer is an installer script that runs in **Systemless Mode** or **recovery Mode**, Support Magisk, KernelSU, APatch, twrp, orangefox or other installation places.

## Mode
**Systemless Mode** : Installation that can only be installed in **magisk*,**kernelsu** and **apatch** which are read as systemless modules.

**Recovery Mode** : Installation that can only be installed in recovery such as **TWRP**, **OrangeFox** or other recoveries are read as non-systemless which are installed directly through the partition.


## Variabel
- ``MODPATH`` directory where the module is edited
- ``SYSTEMLESSMOD`` magisk module directory after installing module (/data/adb/modules/"id name module")
- ``SYSTEMLESSUP`` magisk module directory before installing module (/data/adb/modules_update/"id name module")
- ``KOPIMOD`` kopi module directory (/data/kopi/modules/"id name modules")
- ``TYPEINSTALL`` Type install module (systemless,kopi,false)
- ``API`` Android SDK Code
- ``ARCH`` Architecture
- ``ID`` Id name module
- ``NAME`` Name module
- ``VERSION`` Version
- ``VERSIONCODE`` Version code
- ``DEVICE`` Device Name
- ``DATE`` Date module build
- ``AUTHOR`` Author Module


# Example script
[module.prop](https://github.com/litegapps/litegapps/blob/main/core/utils/kopi/module.prop)
 
[customize.sh](https://github.com/litegapps/litegapps/blob/main/core/utils/customize.sh)
 
[install.sh](https://github.com/litegapps/litegapps/blob/main/core/utils/kopi/install.sh)
 
[permissions.sh](https://github.com/litegapps/litegapps/blob/main/core/utils/kopi/permissions.sh)
 
[uninstall.sh](https://github.com/litegapps/litegapps/blob/main/core/utils/kopi/uninstall.sh)
 
