var ghpages = require('gh-pages')
var path = require('path')

ghpages.publish(path.join(__dirname, 'dist'), function(err) {
  if(err) console.error('an error has occured', err)
  else console.log('dist has been published to github page')
});
