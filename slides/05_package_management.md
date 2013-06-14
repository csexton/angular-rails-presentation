# Managing Dependencies

!SLIDE

# CDN

Easy peazy.

!SLIDE

# Download Files

Just dump things in `vendor/assets`

!SLIDE

# Asset Gems

!SLIDE

<img src="/bower-full.png" class="fullscreen" />

!SLIDE

# Sprockets ❤s Bower?!?
Yep.

!SLIDE

## Configure Bower
* `.bowerrc`
* `vendor/assets/bower.json`

!SLIDE

## `.bowerrc`

```json
{
  "directory": "vendor/assets/components",
  "json": "vendor/assets/bower.json"
}
```

!SLIDE

## `vendor/assets/bower.json`

```json
{
  "dependencies" : {
    "angular": "1.0.7",
    "angular-resource": "1.0.7"
  }
}
```

!SLIDE

## Install Bower

```bash
brew install npm
npm install -g bower
bower install
```

```bash
$ bower install
bower cloning git://github.com/angular/bower-angular.git
bower fetching angular
bower cached git://github.com/angular/bower-angular.git
bower checking out angular#v1.0.7
bower copying /Users/csexton/.bower/cache/angular/ef2188def21eb1bbd1f1792311942a53
bower installing angular#1.0.7
```

!SLIDE

## Vendor the assets

```bash
git add /vendor/assets/components
```


!SLIDE

## Sass

In `application.rb`:

    config.assets.paths << Rails.root.join("vendor","assets","components")

Then in our scss file:

    @import "sass-bootstrap/lib/bootstrap";

!SLIDE

# Asset Pipleine

❤ It just works! ❤

!SLIDE

## Asset Pipleine

In `application.js`

```javascript
//= require angular
//= require angular-resource
//= require_tree .
//= require_self
```



