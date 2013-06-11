# File Organization

What goes where

!SLIDE

## File Organization
<pre style="font-family: menlo; line-height: 31px; font-size: 24px;">
    app
    ├── assets
    │   └── javascripts
    │       ├── application.js.coffee
    │       │   └── slides_controller.js.coffee
    │       └── controllers.js.coffee
    ├── controllers
    │   ├── slides_controller.rb
    │   └── welcome_controller.rb
    ├── models
    │   └── slide.rb
    └── views
        └── slides
            ├── index.html.slim
            └── index.json.jbuilder
</pre>

!SLIDE

<pre style="font-family: menlo; line-height: 31px; font-size: 24px;">
    app/assets/javascripts
    ├── controllers.js.coffee
    ├── controllers
    │   ├── chat_room_controller.js.coffee
    │   ├── comments_controller.js.coffee
    │   ├── slide_controller.js.coffee
    │   ├── slides_controller.js.coffee
    │   └── user_form_controller.js.coffee
    ├── directives.js.coffee
    ├── directives
    │   ├── comments_order.js.coffee
    │   ├── keypress.js.coffee
    │   └── scroll_to.js.coffee
    ├── filters
    ├── services.js.coffee
    └── services
        ├── comments.js.coffee
        └── slides.js.coffee
</pre>
