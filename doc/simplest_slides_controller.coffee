m = angular.module 'SlidesController', []
m.controller 'SlidesController', ($scope, $http) ->
  $scope.slides = []

  $http.get("/slides.json").success (data) ->
    $scope.slides = data
    $scope.index = 0
    $scope.slide = data[$scope.index]

  $scope.nextSlide = -> $scope.slide = $scope.slides[++$scope.index]
