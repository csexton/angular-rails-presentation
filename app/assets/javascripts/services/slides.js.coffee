angular.module('Slide', ['ngResource'])
  .factory 'Slide', ($resource) ->
    Slide = $resource '/slides/:id', {}, {}
