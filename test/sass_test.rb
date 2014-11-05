require File.expand_path('test_helper.rb', File.dirname(__FILE__))

class SassTest < Minitest::Test
  def test_compilation
    path = 'lib/assets/stylesheets'
    %w(bigcartel).each do |file|
      engine = Sass::Engine.for_file("#{path}/#{file}.sass", syntax: :sass, load_paths: [path])
      engine.render
    end
  end
end
