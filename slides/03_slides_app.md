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
    $scope.nextSlide = ->
      $scope.slide = $scope.slides[++$scope.index]
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

# That's it?
Yep.
