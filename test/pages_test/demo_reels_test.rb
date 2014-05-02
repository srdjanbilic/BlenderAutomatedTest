require_relative '../minitest_helper'

class DemoReelsTest < MinitestHelper

  def test_demo_reels_page
    @browser.li(id: "menu-item-10").flash.click
    @browser.li(class: "page_item page-item-15984", index: 0).click 
    assert_equal(@browser.title.lstrip, "Demo reels - blender.org - Home of the Blender project - Free and Open 3D Creation Software")
    assert_equal(@browser.url, "http://www.blender.org/features/demo-reels/")
    #@browser.div(id: "post-15984", index: 0).click 
	end 
  
  
end