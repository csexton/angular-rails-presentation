angular.module('CommentsSettings', [])

  .directive 'reverseCommentsOrder', () ->
    restrict: 'A'
    link: (scope, element, attrs) ->
      scope.commentSettings.order = 'reverse'

  .directive 'numComments', () ->
    restrict: 'A'
    link: (scope, element, attrs) ->
      scope.commentSettings.limit = attrs.numComments
