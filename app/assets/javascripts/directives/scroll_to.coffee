m = angular.module 'ScrollTo', []
m.directive 'commentedScrollTo', ($timeout) ->
  restrict: 'A'
  link: (scope, element, attrs) ->
    raw = element[0]
    scope.$watch 'comments', ((newV, oldV, scop)->
      # use $timeout to defer execution to after digest phase is done
      $timeout (->
        $('#comments').scrollTo(attrs.commentedScrollTo, 100)
      ), 0, false
    ), true # check by object equality instead of reference.. comments is getting filled in
    true

