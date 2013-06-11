## Slides model

    class Slide
    end

!SLIDE

## Slide Controller

    class SlidesController
    end


## Slide View

    json.body @slide.body


## Angular Slide Controller

    m = angular.module 'SlidesController', []
    m.controller 'SlidesController', ($scope, $http) ->
      # ...

## Angular Slide Template

    <div id="slides" ng-controller="SlidesController" class="ng-scope">
        <div class="slide">
            <div class="slide-body ng-binding" ng-bind-html-unsafe="slide.body"></div>
        </div>
    </div>


# That's it?
Yep.

