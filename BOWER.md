So, sprockets and bower play nice. Well sprockets knows how to read a `bower.json` file and include the appropriate files. Thus, a little experiment in using it to manage the components here. To see how this works check out the following files:

* `.bowerrc`
* `vendor/assets/bower.json`

## Managing Dependencies

Using bower to manage js dependencies and their dependencies.

To install bower:

1. Install node and npm (hint: `brew install npm`)
1. Install bower `npm install -g bower`
1. Make sure you have the npm bin directory in your path `export PATH="/usr/local/share/npm/bin:$PATH"`
1. You can now use normal bower commands in the rails root.

To add a package:

1. Edit `vendor/assets/bower.json` and add the package you want
1. Run `bower install`
1. Check in the changes, including the files that bower downloaded.

The files in `vendor/assets/components` are vendored so we can run on heroku and don't have to install node just to run locally.

# Sass

While sprockets knows about bower, sass does not -- the only problem is the load paths. For example this project was setup with 'sass-bootstrap' and to get the import to work we had to add a line to our application.rb file to make sure to add that to the load path:

    config.assets.paths << Rails.root.join("vendor","assets","components")

Then in our scss file:

    @import "sass-bootstrap/lib/bootstrap";

