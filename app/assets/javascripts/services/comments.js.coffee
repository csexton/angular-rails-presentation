angular.module('Comment', ['ngResource'])
  .factory 'Comment', ['$resource', ($resource) ->
    Comment = $resource '/comments/:id', {}, {}
  ]
