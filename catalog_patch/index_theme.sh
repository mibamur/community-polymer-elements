if grep -n mainPanel app/index.html; then
    echo 'index - patched'
else
    echo 'index - patching app/index.html'
    STYLE='<style type="text/css"> \#mainPanel { background-color: \#455A64; } \#topBar { background-color: \#607D8B; } h1.app-logo { color: \#FFFFFF; } package-tile:hover \#content.package-tile { box-shadow: 0px 5px 10px \#212121; } \#guides-container.page-packages h3.page-packages { color: \#FFFFFF; } \#toolbar-title.app-cart { color: \#FFFFFF; } </style>\n</head>'
    sed -i "s#</head>#$STYLE#g" app/index.html
fi

