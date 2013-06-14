describe "SlidesController", ->
  scope = {}
  fakettp = {get: -> {success: -> }}

  beforeEach(module('SlidesController'))
  beforeEach inject ($httpBackend) ->
    $httpBackend.when('GET', '/slides.json').respond([{id: 1, body: "hello"}])

  afterEach inject ($httpBackend) ->
    $httpBackend.verifyNoOutstandingExpectation()
    $httpBackend.verifyNoOutstandingRequest()

  it "initializes slides to an empty array", inject ($controller) ->
    $controller 'SlidesController',
      $scope: scope
      $http: fakettp

    expect(scope.slides).toBeDefined()

  it "queries for slides", inject ($controller, $http, $httpBackend) ->
    $httpBackend.expectGET('/slides.json')
    $controller 'SlidesController',
      $scope: scope
      $http: $http

    $httpBackend.flush()
    expect(scope.slide.body).toEqual("hello")


