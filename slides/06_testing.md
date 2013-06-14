!SLIDE

# TDD

!SLIDE

# TDD
<div id="elight">
  <img src="elight.jpg"></img>
  <div id="interrobang">!</div>
</div>

!SLIDE

## Tests are easy!
<pre class="filename">app/assets/javascripts/controllers/slides_controller.js.coffee:</pre>
```coffeescript
angular.module('SlidesController', [])
  .controller 'SlidesController', ($scope) ->
    $scope.slides = []
```
<pre class="filename">spec/javascripts/controllers/slides_controller_spec.js.coffee:</pre>
```coffeescript
describe "SlidesController", ->
  scope = {}
  beforeEach(module('SlidesController'))

  it "initializes slides to an empty array", inject ($controller) ->
    $controller 'SlidesController', $scope: scope

    expect(scope.slides).toBeDefined()
```

!SLIDE

<pre class="filename">spec/javascripts/controllers/slides_controller_spec.js.coffee:</pre>
```coffeescript
describe "SlidesController", ->
  scope = {}
  fakettp = {get: -> {success: -> }}
  beforeEach(module('SlidesController'))

  it "queries for slides", inject ($controller) ->
    spyOn(fakettp, 'get').andReturn(jasmine.createSpyObj('response', ['success']))

    $controller 'SlidesController', { $scope: scope, $http: fakettp }

    expect(fakettp.get).toHaveBeenCalledWith('/slides.json')
```
<pre class="filename">app/assets/javascripts/controllers/slides_controller.js.coffee:</pre>
```coffeescript
angular.module('SlidesController', [])
  .controller 'SlidesController', ($scope, $http) ->
    $scope.slides = []
    $http.get("/slides.json")
      .success (data) ->
        ...
```
!SLIDE

# <span style="color:red;">😈</span> Karma <span style="color: green;">😇</span> 
!SLIDE

# <span style="color:red;">😈</span> Karma <span style="color: green;">😇</span> 

```bash
$ npm install karma
```

!SLIDE

# <span style="color:red;">😈</span> Karma <span style="color: green;">😇</span> 

```bash
$ npm install karma
```
<div id="dealwithit">
  <img src="deal_with_it.gif">
</div>

!SLIDE

<pre class="filename">karma.conf.js:</pre>
```javascript
...
files = [
  // Jasmine from karma
  JASMINE,
  JASMINE_ADAPTER,

  // Production vendor scripts
  'vendor/assets/components/jquery/jquery.js',
  'vendor/assets/components/angular/angular.js',
  'vendor/assets/components/angular-resource/angular-resource.js',
  'vendor/assets/components/angular-cookies/angular-cookies.js',

  // Angular testing mocks
  'vendor/assets/components/angular-mocks/angular-mocks.js',

  // Our code under test
  'app/assets/javascripts/**/*.coffee',

  // Our tests
  'spec/javascripts/**/*_spec*'
];
...
```

!SLIDE

## Huge Success!

<pre class="karmaoutput">
$ karma start
<span class="green">INFO [karma]:</span> Karma server started at http://localhost:9876/
<span class="green">INFO [launcher]:</span> Starting browser Chrome
<span class="green">INFO [Chrome 28.0 (Linux)]:</span> Connected on socket id OuuVjmz0YmJPjXy_FNUQ
Chrome 28.0 (Linux): Executed 8 of 8 <span class="green">SUCCESS</span> (0.279 secs / 0.057 secs)
</pre>

