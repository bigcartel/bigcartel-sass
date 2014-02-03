module Bigcartel
  module Sass
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

      def stylesheets_sub_path
        File.join assets_path, 'stylesheets/bigcartel'
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
        ::Sass.load_paths << stylesheets_sub_path
      end

      def register_rails_engine
        require 'bigcartel-sass/rails'
      end

    end
  end
end

Bigcartel::Sass.load!
