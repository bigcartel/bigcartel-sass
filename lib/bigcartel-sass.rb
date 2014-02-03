module Bigcartel
  class << self

    def load!
      if rails?
        require 'sass-rails'
        register_rails_engine
      end

      configure_sass
    end

    def gem_path
      @gem_path ||= File.expand_path '..', File.dirname(__FILE__)
    end

    def stylesheets_path
      File.join assets_path, 'stylesheets'
    end

    def assets_path
      @assets_path ||= File.join gem_path, 'lib', 'assets'
    end

    def rails?
      defined?(::Rails)
    end

    private

    def configure_sass
      ::Sass.load_paths << stylesheets_path
    end

    def register_rails_engine
      require 'bigcartel-sass/rails'
    end

  end
end

Bigcartel.load!
