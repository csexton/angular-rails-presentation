Setting up karma for testing

Install karma

    npm install -g karma

Create the karma config file `karma init` and answer the prompts

Create a simple test file in `karma/example_spec.js.coffee` with:

    @Foo =
      bar: -> "baz"
    describe "foo", ->
      it "equals baz", ->
        expect(Foo.bar).toEqual("baz")

Add support for coffeescript by adding this to the karma.config.js file:

    preprocessors = {
      '**/*.coffee': 'coffee'
    };

Start up the server

    karma start

Cheanging the file or running `karma run` in a different terminal will run through the tests.
