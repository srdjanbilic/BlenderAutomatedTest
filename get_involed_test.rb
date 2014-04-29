require 'watir-webdriver'
require 'minitest/autorun'

class BlenderTesting < Minitest::Test

 def setup
    @b = Watir::Browser.new :chrome
    @b.window.resize_to(1024,800)
    @b.goto 'http://www.blender.org/' 
  end
  
 def test_get_involed_page
    @b.li(id: 'menu-item-9').click
    assert_equal(@b.title.lstrip, "Get Involved - blender.org - Home of the Blender project - Free and Open 3D Creation Software")
    assert_equal(@b.url, "http://www.blender.org/get-involved/")
    assert(@b.div(class: "span6", index: 0).p.text.include? "Blender is being made by hundreds of active volunteers from around the world")
	end 
  
    def teardown
    @b.screenshot.save 'output.png' if !passed?
    @b.close
  end
  
end