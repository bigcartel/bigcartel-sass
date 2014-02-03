module Bigcartel
  module Sass
    class Engine < ::Rails::Engine
      config.autoload_paths << File.expand_path("../lib/assets", __FILE__)
    end
  end
end
