# The LiteGapps Project
# by wahyu6070
# uninstall.sh (running by update-binary)
#


if [ -f $KOPIMOD/list_install_system ]; then
	for i in $(cat $KOPIMOD/list_install_system); do
		sedlog "- Deleteting <$SYSTEM/$i>"
		if [ -f $SYSTEM/$i ]; then
			del $SYSTEM/$i
			if [ $? = 0 ]; then
				sedlog "- Removing File <$SYSTEM/$i> [OK]"
			else
				sedlog "- Removing File <$SYSTEM/$i> [ERROR]"
			fi
			rmdir $(dirname $SYSTEM/$i) 2>/dev/null
			if [ $? = 0 ]; then
				sedlog "- Removing Dir <$(dirname $SYSTEM/$i)> [OK]"
			else
				sedlog "- Removing Dir <$(dirname $SYSTEM/$i)> [ERROR]"
			fi
		fi
	done
fi


if [ -f $KOPIMOD/list_install_vendor ]; then
	for i in $(cat $KOPIMOD/list_install_vendor); do
		sedlog "- Deleteting <$VENDOR/$i>"
		if [ -f $VENDOR/$i ]; then
			del $VENDOR/$i
			if [ $? = 0 ]; then
				sedlog "- Removing File <$VENDOR/$i> [OK]"
			else
				sedlog "- Removing File <$VENDOR/$i> [ERROR]"
			fi
			rmdir $(dirname $VENDOR/$i) 2>/dev/null
			if [ $? = 0 ]; then
				sedlog "- Removing Dir <$(dirname $VENDOR/$i)> [OK]"
			else
				sedlog "- Removing Dir <$(dirname $VENDOR/$i)> [ERROR]"
			fi
		fi
	done
fi

if [ -f $KOPIMOD/list_install_product ]; then
	for i in $(cat $KOPIMOD/list_install_product); do
		sedlog "- Deleteting <$PRODUCT/$i>"
		if [ -f $PRODUCT/$i ]; then
			del $PRODUCT/$i
			if [ $? = 0 ]; then
				sedlog "- Removing File <$PRODUCT/$i> [OK]"
			else
				sedlog "- Removing File <$PRODUCT/$i> [ERROR]"
			fi
			rmdir $(dirname $PRODUCT/$i) 2>/dev/null
			if [ $? = 0 ]; then
				sedlog "- Removing Dir <$(dirname $PRODUCT/$i)> [OK]"
			else
				sedlog "- Removing Dir <$(dirname $PRODUCT/$i)> [ERROR]"
			fi
		fi
	done
fi

if [ -f $KOPIMOD/list_install_system_ext ]; then
	for i in $(cat $KOPIMOD/list_install_system_ext); do
		sedlog "- Deleteting <$SYSTEM_EXT/$i>"
		if [ -f $SYSTEM_EXT/$i ]; then
			del $SYSTEM_EXT/$i
			if [ $? = 0 ]; then
				sedlog "- Removing File <$SYSTEM_EXT/$i> [OK]"
			else
				sedlog "- Removing File <$SYSTEM_EXT/$i> [ERROR]"
			fi
			rmdir $(dirname $SYSTEM_EXT/$i) 2>/dev/null
			if [ $? = 0 ]; then
				sedlog "- Removing Dir <$(dirname $SYSTEM_EXT/$i)> [OK]"
			else
				sedlog "- Removing Dir <$(dirname $SYSTEM_EXT/$i)> [ERROR]"
			fi
		fi
	done
fi

print "- Uninstalling successfully"
print " "