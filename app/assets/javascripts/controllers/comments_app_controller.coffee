m = angular.module 'CommentsAppController', []
m.controller 'CommentsAppCtrl', ['$scope', 'Comment', ($scope, Comment) ->
  $scope.mode = "small"
  $scope.user = {name: ''}
  $scope.comment = new Comment()

  $scope.switchModes = (newMode) ->
    $scope.mode = newMode

  $scope.shouldPoll = ->
    $scope.mode == 'full'

  $scope.postMessage = ->
    $scope.comment.$save()
    $scope.comment = new Comment()
]