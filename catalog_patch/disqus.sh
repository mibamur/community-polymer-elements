
echo "Past own Google Analitics (y/n)";
YESNO="y"
read YESNO
if [ "$YESNO" = "y" ] ; then
	echo "Enter code (exaple UA-39334307-10)";
	read NEWGA
	OLDGA="UA-39334307-10"
	# NEWGA="UA-39334307-10"
	sed -i "s/$OLDGA/$NEWGA/" app/index.html
else
	echo "Removing Google Analitics";
	sed -i '/<script>/,/<\/script>/d' app/index.html
fi


if grep -n disqus app/index.html; then
    echo 'disqus - patched'
else
    echo 'disqus - patching app/index.html'
	sed -i 's#</html>##g' app/index.html
	sed -i 's#</body>##g' app/index.html
	cat app/index.html disqus > app/index2.html
	mv app/index2.html app/index.html
fi

