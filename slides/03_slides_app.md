## Slides model

```ruby
class Slide
end
```

!SLIDE

## Slide Controller

```ruby
class SlidesController
end
```


## Slide View

```ruby
json.body @slide.body
```


## Angular Slide Controller

```coffeescript
angular.module('SlidesController', [])
  .controller 'SlidesController', ($scope, $http) ->
    # ...
```

## Angular Slide Template

```html
<div id="slides" ng-controller="SlidesController" class="ng-scope">
    <div class="slide">
        <div class="slide-body ng-binding" ng-bind-html-unsafe="slide.body"></div>
    </div>
</div>
```

# That's it?
Yep.

