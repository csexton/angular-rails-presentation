## Slides model

```ruby
class Slide
  attr_reader :body, :id
  def self.all
    list_files.each_with_object([]) do |f, slides|
      File.read(f).split("SLIDE").each do |contents|
        slides << self.new(slides.length, contents)
      end
    end
  end

  def initialize(index, body)
    @id = index
    @body = process_markdown(body)
  end
end
```

!SLIDE

## Slide Controller

```ruby
class SlidesController < ApplicationController
  def index
    @slides = Slide.all
  end
end
```

!SLIDE

## Slide View

```ruby
json.array!(@slides) do |slide|
  json.id slide.id
  json.body slide.body
end
```

!SLIDE

## Angular from CDN

```html
<html>
  <head>
    <script src="https://ajax.googleapis.com/.../1.0.7/angular.js"></script>
    <script src="https://ajax.googleapis.com/.../1.0.7/angular-resource.js"></script>
  </head>
  <body ng-app="app">
    <!-- ... -->
  </body>
</html>
```


!SLIDE

## Angular Slide Controller

```coffeescript
angular.module('SlidesController', [])
  .controller 'SlidesController', ($scope) ->
    $scope.slides = []
```

!SLIDE

## Angular Slide Controller

```coffeescript
angular.module('SlidesController', [])
  .controller 'SlidesController', ($scope, $http) ->
    $scope.slides = []
    $http.get("/slides.json")
      .success (data) ->
        $scope.slides = data
        $scope.index = 0
        $scope.slide = data[$scope.index]
```

!SLIDE

## Two-Way Binding

```html
<input ng-model="data.name"/>
<p> Hello {{data.name}} </p>
<input ng-model="data.name"/>
<p> {{"ohai " + data.name | uppercase}} </p>
```
<iframe src="/example_01"></iframe>

```html
<input ng-model="data.name"></input>
<p>Hello {{data.name}}</p>
<input ng-model="data.name"></input>
```


!SLIDE

## Angular Slide Template

```html
<body ng-app="app">
<div ng-controller="SlidesController">
    <div class="slide">
        <div class="slide-body">
            {{slide.body}}
        </div>
    </div>
</div>
</body>
```

!SLIDE

## Angular Slide Template

```html
<body ng-app="app">
<div ng-controller="SlidesController">
    <div class="slide">
        <div class="slide-body" ng-bind-html-unsafe="slide.body">
        </div>
    </div>
</div>
</body>
```

!SLIDE

## With Next!

```coffeescript
angular.module('SlidesController', [])
  .controller 'SlidesController', ($scope, $http) ->
    $scope.slides = []
    $http.get("/slides.json")
      .success (data) ->
        $scope.slides = data
        $scope.index = 0
        $scope.slide = data[$scope.index]
    $scope.nextSlide = -> 
      $scope.slide = $scope.slides[++$scope.index]
```

```html
<div ng-controller="SlidesController">
    <div class="slide">
        <div class="slide-body" ng-bind-html-unsafe="slide.body">
        </div>
    </div>
    <a ng-click="nextSlide()">Next</a>
</div>
```
!SLIDE

# That's it?
Yep.
