m = angular.module 'Keypress', []
m.directive 'globalKeypress', ($timeout) ->
  restrict: 'E'
  link: (scope, element, attr) ->
    jQuery("body").keydown (e) ->
      if e.keyCode == parseInt(attr.keyCode)
        scope.$apply (s) ->
          s.$eval(attr.onPress)


