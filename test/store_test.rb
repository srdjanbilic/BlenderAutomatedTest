require 'watir-webdriver'
require 'minitest/autorun'

class BlenderTesting < Minitest::Test

 def setup
    @b = Watir::Browser.new :chrome
    @b.window.resize_to(1024,800)
    @b.goto 'http://www.blender.org/' 
  end
  
 def test_store_page
    @b.li(id: 'menu-item-1972').click
    assert_equal(@b.title.lstrip, "Blender Store")
    assert_equal(@b.url, "http://www.blender3d.org/e-shop/")
    assert(@b.div(id: "category-title", index: 0).text.include? "Welcome to the Blender Store")
	end 
  
    def teardown
    @b.screenshot.save 'output.png' if !passed?
    @b.close
  end
  
end