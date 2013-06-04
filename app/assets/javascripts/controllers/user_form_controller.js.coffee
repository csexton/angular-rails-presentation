m = angular.module 'UserFormController', ['ngCookies']
m.controller 'UserFormController', ['$scope', '$cookies', ($scope, $cookies) ->
  $scope.user.name = $cookies.userName

  $scope.startCommenting = ->
    if $scope.userNameForm.$valid
      $cookies.userName = $scope.user.name
      $scope.switchModes('full')
]
