## Slides model

    class Slide
    end

!SLIDE

## Slide Controller

    class SlidesController
    end


!SLIDE

## Slide View

    json.body @slide.body


!SLIDE

## Angular Slide Controller

    m = angular.module 'SlidesController', []
    m.controller 'SlidesController', ($scope, $http) ->
      # ...

!SLIDE

## Angular Slide Template

    <body ng-app="app">
    <div ng-controller="SlidesController">
        <div class="slide">
            <div class="slide-body" ng-bind-html-unsafe="slide.body">
            </div>
        </div>
    </div>
    </body>

!SLIDE

# That's it?
Yep.
