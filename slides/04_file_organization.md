# File Organization

What goes where

!SLIDE

## File Organization
<pre style="font-family: menlo; line-height: 31px; font-size: 24px;">
    app/
    ├── controllers/
    │   └── slides_controller.rb
    ├── models/
    │   └── slide.rb
    └── views/
        └── slides/
            ├── index.html.erb
            └── index.json.jbuilder
</pre>

!SLIDE

## JS Files
<pre style="font-family: menlo; line-height: 31px; font-size: 24px;">
    app/assets/javascripts
    ├── controllers/
    ├── directives/
    ├── filters/
    ├── services/
    ├── application.js.coffee
    ├── controllers.js.coffee
    ├── directives.js.coffee
    ├── filters.js.coffee
    └── services.js.coffee
</pre>

!SLIDE

<img src="/sad-panda.jpg" class="fullscreen" />
<h1 style="position:absolute; left: 387px; top: 300px;color:white;">No Autoloading</h1> 
!SLIDE

## Module Loading

<pre class="filename">app/assets/javascripts/application.js.coffee:</pre>

```coffeescript
angular.module('app', ['controllers'])
```

<pre class="filename">app/assets/javascripts/controllers.js.coffee:</pre>

```coffeescript
angular.module('controllers', ['SlidesController'])
```

<pre class="filename">app/assets/javascripts/controllers/slides_controller.js.coffee:</pre>

```coffeescript
angular.module('SlidesController', [])
  .controller 'SlidesController', ($scope) ->
    ...
```

!SLIDE

<pre style="font-family: menlo; line-height: 31px; font-size: 24px;">
    app/assets/javascripts/
    ├── application.js.coffee
    ├── controllers.js.coffee
    ├── controllers/
    │   ├── slide_controller.js.coffee
    │   ├── slides_controller.js.coffee
    │   └── user_form_controller.js.coffee
    ├── directives.js.coffee
    ├── directives/
    │   ├── comments_order.js.coffee
    │   └── keypress.js.coffee
    ├── filters/
    ├── services.js.coffee
    └── services/
        ├── comments.js.coffee
        └── slides.js.coffee
</pre>
