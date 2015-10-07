if grep -n isMol app/elements/pages/page-packages.html; then
    echo 'hr - patched'
else
    echo 'hr - patching app/elements/pages/page-packages.html'
	# add <hr /> between packages
	# sed -i 's#</package-tile></a>#</package-tile></a>\n            <template is="dom-if" if="{{_isMol(item.name)}}"><hr style="color: black; width: 100%;" themed-reverse="" /></template>#' app/elements/pages/page-packages.html
	# <a href$="[[_packageLink(item.name)]]" is="app-link" class="package flex-none"><package-tile name$="[[item.name]]"></package-tile></a>

# <a href$="[[_packageLink(item.name)]]" is="app-link" class="package flex-none"><package-tile name$="[[item.name]]"></package-tile></a>

	sed -e '/<\/package-tile><\/a>/ {' -e 'r index_hr_style' -e 'd' -e '}' -i app/elements/pages/page-packages.html
	sed -e '/packages]]">/ {' -e 'r index_hr_style2' -e 'd' -e '}' -i app/elements/pages/page-packages.html
	sed -e '/guides-container">/ {' -e 'r index_hr_style3' -e 'd' -e '}' -i app/elements/pages/page-packages.html

	sed -i 's#_packageLink: function(name)#_isMol: function(name) { if (name==="community-polymer-elements") { return true; } else { return false; } },\n    _packageLink: function(name)#' app/elements/pages/page-packages.html
fi
