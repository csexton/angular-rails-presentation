describe "CommentsSettings", ->

  beforeEach module 'CommentsSettings'
  beforeEach inject ($rootScope) ->
    $rootScope.commentSettings = {}

  describe "reverseCommentsOrder", ->

    it "applies to an attribute", inject ($compile, $rootScope) ->
      $compile('<div reverse-comments-order></div>')($rootScope)

      expect($rootScope.commentSettings.order).toBeDefined()
      expect($rootScope.commentSettings.order).toEqual('reverse')

  describe "numComments", ->

    it "applies to an attribute", inject ($compile, $rootScope) ->
      $compile('<div num-comments="123"></div>')($rootScope)

      expect($rootScope.commentSettings).toBeDefined()
      expect($rootScope.commentSettings.limit).toEqual('123')
