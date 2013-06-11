angular.module('ScrollTo', [])
  .directive 'commentedScrollTo', ($timeout) ->
    restrict: 'A'
    link: (scope, element, attrs) ->
      scope.$watch 'comments', (->
        # use $timeout to defer execution to after digest phase is done
        $timeout (->
          element.scrollTo(attrs.commentedScrollTo, 100)
        ), 0, false
      ), true # check by object equality instead of reference.. comments is getting filled in
      true
