angular.module('SlidesController', [])
  .controller 'SlidesController', ($scope, $http) ->

    $scope.slides = []

    $http.get("/slides.json")
      .success (data) ->
        $scope.slides = data
        $scope.index = 0
        $scope.slide = data[$scope.index]

    $scope.nextSlide = ->
      if not $scope.nextDisabled()
        $scope.slide = $scope.slides[++$scope.index]

    $scope.prevSlide = ->
      if not $scope.prevDisabled()
        $scope.slide = $scope.slides[--$scope.index]

    $scope.prevDisabled= ->
      $scope.index == 0

    $scope.nextDisabled= ->
      ($scope.index+1) == $scope.slides.length

