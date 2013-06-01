m = angular.module 'CommentsController', []
m.controller 'CommentsController', ['$scope', '$timeout', 'Comment', ($scope, $timeout, Comment) ->
  $scope.comments = []
  $scope.postMessage = ->
    c = new Comment(text: $scope.messageText, name: 'Nemo')
    $scope.messageText = ""
    c.$save()
    #$scope.comments = Comment.query({})

  tick = -> 
    Comment.query {}, (newComments)->
      if $scope.comments.length == 0
        $scope.comments = newComments
      else
        lastNew = newComments[newComments.length - 1]
        lastOld = $scope.comments[$scope.comments.length - 1]
        unless angular.equals(lastNew, lastOld)
          $scope.comments = newComments
      $timeout(tick, 1000)
  tick()
]
