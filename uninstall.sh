#example
if [ -f $KOPIMOD/list_install_system ]; then
	for i in $(cat $KOPIMOD/list_install_system); do
		if [ -f $system/$i ]; then
			del $system/$i
		fi
	done
fi

if [ -f $KOPIMOD/list_install_vendor ]; then

	for i in $(cat $KOPIMOD/list_install_vendor); do
		if [ -f vendor/$i ]; then
			del /vendor/$i
		fi
	done
fi
printlog "- Uninstalling successfully"
