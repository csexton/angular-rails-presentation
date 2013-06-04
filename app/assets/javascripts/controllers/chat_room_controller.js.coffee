m = angular.module 'ChatRoomController', []
m.controller 'ChatRoomCtrl', ['$scope', 'Comment', ($scope, Comment) ->
  $scope.mode = "small"
  $scope.user = {name: ''}
  $scope.comment = new Comment()

  $scope.switchModes = (newMode) ->
    $scope.mode = newMode

  $scope.postMessage = ->
    $scope.comment.name = $scope.user.name
    $scope.comment.$save()
    $scope.comment = new Comment()
]
