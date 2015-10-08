if grep -n grayscale app/elements/app-logo/app-logo.html; then
    echo 'logo - patched'
else
    echo 'logo - patching app/elements/app-logo/app-logo.html'
    sed -i 's#Polymer Catalog#Open Elements Catalog#' app/elements/app-logo/app-logo.html
    # sed -i 's#--app-logo-font-size: 20px;#--app-logo-font-size: 20px;\n    --app-logo-max-width: 20rem;#' app/elements/app-logo/app-logo.html
    sed -i 's#<a href="/"#<a style="max-width: 20rem;" href="/"#' app/elements/app-logo/app-logo.html

    # http://davidwalsh.name/css-filters
    sed -i 's#alt# style="filter: grayscale(0.6) opacity(0.9) hue-rotate(120deg);-webkit-filter: grayscale(0.6) opacity(0.9) hue-rotate(120deg);" alt#' app/elements/app-logo/app-logo.html
fi


