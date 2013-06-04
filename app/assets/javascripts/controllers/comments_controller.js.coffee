m = angular.module 'CommentsController', []
m.controller 'CommentsCtrl', ['$scope', '$timeout', 'Comment', ($scope, $timeout, Comment) ->
  $scope.comments = []
  $scope.shouldPoll = ->
    true

  tick = ->
    if $scope.shouldPoll()
      Comment.query {}, (newComments)->
        if $scope.comments.length == 0
          $scope.comments = newComments
        else
          lastNew = newComments[newComments.length - 1]
          lastOld = $scope.comments[$scope.comments.length - 1]
          unless angular.equals(lastNew, lastOld)
            $scope.comments = newComments
        $timeout(tick, 1000)
    else
      $timeout(tick, 1000)

  tick()

]
