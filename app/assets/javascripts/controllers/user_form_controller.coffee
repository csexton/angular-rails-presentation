m = angular.module 'UserFormController', ['ngCookies']
m.controller 'UserFormController', ['$scope', '$cookies', ($scope, $cookies) ->
  $scope.comment.name = $cookies.userName

  $scope.startCommenting = ->
    if $scope.userNameForm.$valid
      $cookies.userName = $scope.comment.name
      $scope.switchModes('full')
]
