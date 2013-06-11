angular.module('SlideController', [])
  .controller 'SlideController', ($scope, $routeParams, Slide) ->
    $scope.slide = Slide.get {id:$routeParams.id}
