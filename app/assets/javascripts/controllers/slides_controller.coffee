m = angular.module 'SlidesController', []
m.controller 'SlidesController', ($scope, $http) ->

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

  jQuery("body").keydown (e) ->
    if e.keyCode is 32 # space
      $scope.nextSlide()
    if e.keyCode is 37 # left
      $scope.prevSlide()
    if e.keyCode is 39 # right
      $scope.nextSlide()

