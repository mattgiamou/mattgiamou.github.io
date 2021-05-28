using NodeJS

JS_GHP = """
    var ghpages = require('gh-pages');
    ghpages.publish('notebooks/', function(err) {});
    """

run(`$(nodejs_cmd()) -e $JS_GHP`)