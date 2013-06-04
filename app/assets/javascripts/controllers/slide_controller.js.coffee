m = angular.module 'SlideController', []
m.controller 'SlideController', ($scope, $routeParams, Slide) ->
  $scope.slide = Slide.get {id:$routeParams.id}

