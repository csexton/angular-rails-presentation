# This is a manifest file that'll be compiled into application.js, which will include all the files
# listed below.
#
# Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
# or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
#
# It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
# compiled file.
#
# WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
# GO AFTER THE REQUIRES BELOW.
#
#= require jquery
#= require jquery.scrollTo/jquery.scrollTo
#= require angular
#= require angular-resource
#= require angular-cookies
# require angular-ui-bootstrap
#= require_self
#= require_tree ./services
#= require_tree ./filters
#= require_tree ./directives
#= require_tree ./controllers
#= require_tree .

@app = angular.module('app', ['controllers', 'services', 'directives'])
@app.config ['$httpProvider', ($httpProvider) ->
  $httpProvider.defaults.headers.common['X-CSRF-Token'] = $('meta[name="csrf-token"]').attr('content')
]
