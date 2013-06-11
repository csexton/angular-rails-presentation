angular.module('Highlight', [])
  .directive 'codeHighlight', ($timeout) ->
    restrict: 'A'
    link: (scope, elem, attrs) ->
      scope.$watch 'slide.body', ->
        $timeout ->
          elem.find('pre code').each (i,e) -> hljs.highlightBlock(e)
