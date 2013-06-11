describe "UserFormController", ->
  scope = {}

  beforeEach module 'UserFormController'

  beforeEach inject ($controller, $cookies) ->
    $cookies.userName = 'Some Guy'
    scope.user = {name: ''}
    $controller('UserFormController', {$scope: scope, $cookies: $cookies})

  it "sets up the user with the cookie", ->
    expect(scope.user.name).toEqual('Some Guy')

  describe "startCommenting", ->
    beforeEach ->
      mockForm = {}
      scope.userNameForm = mockForm
      scope.switchModes = jasmine.createSpy('switchModes')

    describe "when form is valid", ->
      beforeEach ->
        scope.userNameForm.$valid = true
        scope.user.name = "Another Guy"
        scope.startCommenting()

      it "calls switchModes to full", ->
        expect(scope.switchModes).toHaveBeenCalledWith('full')

      it "updates the userName cookie", inject ($cookies) ->
        expect($cookies.userName).toEqual("Another Guy")

    describe "when form is not valid", ->
      it "does not call switchModes", ->
        scope.userNameForm.$valid = false

        scope.startCommenting()
        expect(scope.switchModes).not.toHaveBeenCalled()

