if grep -n favicons app/index.html; then
    echo 'favicon - patched'
else
    echo 'favicon - patching app/index.html'

	sed -e '/title>/ {' -e 'r favicon' -e 'd' -e '}' -i app/index.html
	#cp -rf favicons ./

	# sed -i 's#_packageLink: function(name)#_isMol: function(name) { if (name==="community-polymer-elements") { return true; } else { return false; } },\n    _packageLink: function(name)#' app/elements/pages/page-packages.html
fi
