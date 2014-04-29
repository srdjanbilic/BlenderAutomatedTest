require 'watir-webdriver'
require 'minitest/autorun'

class BlenderTesting < Minitest::Test

 def setup
    @b = Watir::Browser.new :chrome
    @b.window.resize_to(1024,800)
    @b.goto 'http://www.blender.org/' 
  end
  
 def test_about_page
    @b.li(id: 'menu-item-164').click
    assert_equal(@b.title.lstrip, "About - blender.org - Home of the Blender project - Free and Open 3D Creation Software")
    assert_equal(@b.url, "http://www.blender.org/about/")
    assert(@b.div(class: "span6", index: 0).h1.text.include? "The organization")
	end 
  
    def teardown
    @b.screenshot.save 'output.png' if !passed?
    @b.close
  end
  
end