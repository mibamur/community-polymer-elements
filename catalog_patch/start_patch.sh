bower install --save 'https://github.com/mibamur/disqus-comments.git#master'
bower install --save 'https://github.com/marcus7777/development.git#master'
bower install --save 'https://github.com/marcus7777/utilities.git#master'
bower install --save 'https://github.com/community-polymer-elements/polymer-third-party.git#master'

# get list files
ls bower_components/community-polymer-elements/catalog_patch/ > list_patch

# copy files
cp -rf bower_components/community-polymer-elements/catalog_patch/* ./
mkdir -p dist/images/
cp -rf app/images/polymer.svg dist/images/
cp -rf favicons dist/favicons
cp -rf favicons app/favicons

# run
./disqus.sh
./index_hr.sh
./index_logo.sh
./index_theme.sh
./favicons.sh
node add_json.js

# remove
echo "removing"
for i in `cat list_patch`; do rm -rf $i; done
rm list_patch
