# bigcartel-sass

A standard set of variables, mixins, animations, and placeholder selectors to use across all of Big Cartel's front-end development.

## Installation

Add this line to your application's Gemfile:

    gem 'bigcartel-sass', :git => 'git@github.com:bigcartel/bigcartel-sass.git'

And then execute:

    $ bundle
    
Once installed, reference the library in your sass:

    @import 'bigcartel-sass'
    
## Inclusions

This gem, once imported in your sass, automatically includes the [compass/css3](http://compass-style.org/reference/compass/css3/) library.  It doesn't add any actual css, or any other libraries or frameworks. You'll need to import any of those separately should you choose to use them.

## Usage

* [Variables](https://github.com/bigcartel/bigcartel-sass/blob/master/lib/assets/stylesheets/_variables.css.sass)
* [Mixins](https://github.com/bigcartel/bigcartel-sass/blob/master/lib/assets/stylesheets/_mixins.css.sass)
* [Placeholder Selectors](https://github.com/bigcartel/bigcartel-sass/blob/master/lib/assets/stylesheets/_placeholders.css.sass)
* [Animations](https://github.com/bigcartel/bigcartel-sass/blob/master/lib/assets/stylesheets/_animations.css.sass)


