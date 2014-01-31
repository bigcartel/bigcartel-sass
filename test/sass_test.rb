require File.expand_path('test_helper.rb', File.dirname(__FILE__))

class SassTest < Test::Unit::TestCase
  def test_compilation
    path = 'lib/assets/stylesheets'
    %w(bigcartel).each do |file|
      engine = Sass::Engine.for_file("#{path}/#{file}.css.sass", syntax: :sass, load_paths: [path])
      assert_nothing_raised do
        engine.render
      end
    end
  end
end
