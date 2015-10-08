bower install --save 'https://github.com/mibamur/disqus-comments.git#master'

# get list files
ls bower_components/community-polymer-elements/catalog_patch/ > list_patch

# copy files
cp -rf bower_components/community-polymer-elements/catalog_patch/* ./

# run
./disqus.sh
./index_hr.sh
./index_logo.sh
./index_theme.sh
node add_json.js

# remove
echo "removing"
for i in `cat list_patch`; do rm $i; done
rm list_patch
