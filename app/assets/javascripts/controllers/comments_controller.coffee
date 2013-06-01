m = angular.module 'CommentsController', []
m.controller 'CommentsController', ['$scope', 'Comment', ($scope, Comment) ->
  $scope.comments = Comment.query({})
  $scope.postMessage = ->
    c = new Comment(text: $scope.messageText)
    $scope.messageText = ""
    console.log("sending ", c)
    c.$save()
]
