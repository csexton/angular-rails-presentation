m = angular.module 'Comment', ['ngResource']
m.factory 'Comment', ['$resource', ($resource) ->
  Comment = $resource '/comments/:id', {}, {}
]
