@SlidesCtrl = ($scope, $http) ->
  $http.get("/slides.json")
    .success (data) ->
      $scope.slides= data.beacons

