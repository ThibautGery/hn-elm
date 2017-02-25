'use strict';


const semanticUiComponenet = ["grid", "icon"]

semanticUiComponenet.forEach(component -> {
  require('semantic-ui-css/components/' + component + '.min.css')
})

// Require index.html so it gets copied to dist
require('./index.html');

const Elm = require('./Main.elm');
const mountNode = document.getElementById('main');

// .embed() can take an optional second argument. This would be an object describing the data we need to start a program, i.e. a userID or some token
const app = Elm.Main.embed(mountNode);
