m = angular.module 'Slide', ['ngResource']
m.factory 'Slide', ($resource) ->
  Slide = $resource '/slides/:id', {}, {}
