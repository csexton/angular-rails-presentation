m = angular.module 'CommentsSettings', []

m.directive 'reverseCommentsOrder', () ->
  restrict: 'A'
  link: (scope, element, attrs) ->
    scope.commentSettings.order = 'reverse'

m.directive 'numComments', () ->
  restrict: 'A'
  link: (scope, element, attrs) ->
    scope.commentSettings.limit = attrs.numComments
