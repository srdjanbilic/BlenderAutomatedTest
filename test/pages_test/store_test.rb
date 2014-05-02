require_relative '../minitest_helper'

class StoreTest < MinitestHelper
  
  
 def test_store_page
    @browser.li(id: 'menu-item-1972').flash.click
    assert_equal(@browser.title.lstrip, "Blender Store")
    assert_equal(@browser.url, "http://www.blender3d.org/e-shop/")
    assert(@browser.div(id: "category-title", index: 0).text.include? "Welcome to the Blender Store")
	end 
  
end