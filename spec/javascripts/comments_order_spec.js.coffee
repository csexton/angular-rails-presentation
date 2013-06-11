describe "CommentsSettings", ->
  scope = {}

  beforeEach module 'CommentsSettings'

  describe "reverseCommentsOrder", ->
    beforeEach inject ($rootScope) ->
      scope = $rootScope

    it "applies to an attribute", inject ($compile) ->
      scope.commentSettings = {}
      #console.log("Scope commentsSettings is",scope)
      $compile('<div reverse-comments-order></div>')(scope)
      scope.$digest()

      expect(scope.commentSettings).toBeDefined()
      expect(scope.commentSettings.order).toEqual('reverse')
