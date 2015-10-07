# Community Polymer Open-Elements.org

Patches for elements.polymer-project.org


![screen.png image][screen.png]

> Requirement
- Node.js
- bower 
- npm
- sed
- unix shell (zsh, bash, etc)

```sh
git clone https://github.com/Polymer/polymer-element-catalog.git
cd polymer-element-catalog/
bower install --save 'https://github.com/mibamur/community-polymer-elements.git#master'
bower_components/community-polymer-elements/catalog_patch/start_patch.sh
```

add this first place to catalog.json (automaticaly populate catalog.json WIP)
```js
    {
      "name":"community-polymer-elements",
      "title":"Community Elements",
      "color":"#354e87",
      "symbol":"< />",
      "tagline": "Community third-party libraries"
    },
```

```
npm install
gulp serve
```

## Roadmap

 - [x] replace Google Analitics
 - [x] Disqus
 - [x] Logo
 - [x] index.html ReDesign
 - [ ] community components (search right method to add newest, automaticaly populate catalog.json)
 - [ ] Test
 - [ ] JSBin
 - [ ] Writing new guides, blogs, Articles
 - [ ] FAQs, stackoverflow
 - [ ] Example, Chrome App and other Extensions

> Some other tasks see https://github.com/marcus7777/open-elements.org/issues

MIT
