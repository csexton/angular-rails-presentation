<img src="https://github.com/csexton/angular-rails-presentation/blob/master/public/rails-heart-angular.png?raw=true" />

# Angular.js and Rails
Learn to play nice.

# What is this?

This is the presentation software written in Angular and Rails that Josh and Chris wrote to show a presentation about integrating Angular and Rails in which we discuss how we  integrated Angular and Rails in our presentation software during the presentation about Angular and Rails.

If you don't think that is too troll-y you should come to the talk.

# Running Locally

Clone this repo down, and jump into the directory:

```
bundle install
rake db:migrate
rails s
```

# Bower

The front-end assets are managed using bower. If you are not changing these assets there is nothing you need to do, as they have been vendored under `vendor/assets/components` however if you want to upgrade, add or remove them it is suggested that you use bower to handle dependency resolution for you.

See the [BOWER](BOWER.md) file for details.

# License

MIT. See [LICENSE][LICENSE.md) file for details.
