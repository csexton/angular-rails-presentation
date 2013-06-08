m = angular.module 'CommentsController', []
m.controller 'CommentsCtrl', ['$scope', '$timeout', 'Comment', ($scope, $timeout, Comment) ->
  $scope.commentSettings = {
    order: ''
    limit: '50'
  }
  $scope.comments = []
  $scope.shouldPoll = ->
    true

  commentParams = ->
    ps = {
      limit: $scope.commentSettings.limit
    }
    if $scope.commentSettings.order
      ps.order = $scope.commentSettings.order
    ps

  sco = $scope
  tick = ->
    if sco.shouldPoll()
      Comment.query commentParams(), (newComments)->
        if sco.comments.length == 0
          sco.comments = newComments
        else
          unless angular.equals(sco.comments, newComments)
            sco.comments = newComments
        $timeout(tick, 1000)
    else
      $timeout(tick, 1000)

  # Need to defer initial execution until after any settings directives have
  # had time to parse
  $timeout(tick, 1)
]
