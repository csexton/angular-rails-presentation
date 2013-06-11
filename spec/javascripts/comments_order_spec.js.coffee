describe "CommentsSettings", ->

  beforeEach module 'CommentsSettings'

  describe "reverseCommentsOrder", ->
    beforeEach inject ($rootScope) ->
      $rootScope.commentSettings = {}

    it "applies to an attribute", inject ($compile, $rootScope) ->
      $compile('<div reverse-comments-order></div>')($rootScope)
      $rootScope.$digest()

      expect($rootScope.commentSettings).toBeDefined()
      expect($rootScope.commentSettings.order).toEqual('reverse')
