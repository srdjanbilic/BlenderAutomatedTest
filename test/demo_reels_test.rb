require 'watir-webdriver'
require 'minitest/autorun'

class BlenderTesting < Minitest::Test

 def setup
    @b = Watir::Browser.new :chrome
    @b.window.resize_to(1024,800)
    @b.goto 'http://www.blender.org/' 
  end
  
  def test_demo_reels_page
    @b.li(id: "menu-item-10").click
    @b.li(class: "page_item page-item-15984", index: 0).click 
    assert_equal(@b.title.lstrip, "Demo reels - blender.org - Home of the Blender project - Free and Open 3D Creation Software")
    assert_equal(@b.url, "http://www.blender.org/features/demo-reels/")
    #@b.div(id: "post-15984", index: 0).click 
	end 
  
    def teardown
    @b.screenshot.save 'output.png' if !passed?
    @b.close
  end
  
end