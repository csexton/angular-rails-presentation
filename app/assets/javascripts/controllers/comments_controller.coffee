m = angular.module 'CommentsController', []
m.controller 'CommentsController', ['$scope', 'Comment', ($scope, Comment) ->
  $scope.comments = Comment.query({})
]
