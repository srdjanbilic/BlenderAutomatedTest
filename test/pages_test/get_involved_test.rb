require_relative '../minitest_helper'

class GetInvolvedTest < MinitestHelper
  
  
 def test_get_involved_page
    @browser.li(id: 'menu-item-9').flash.click
    assert_equal(@browser.title.lstrip, "Get Involved - blender.org - Home of the Blender project - Free and Open 3D Creation Software")
    assert_equal(@browser.url, "http://www.blender.org/get-involved/")
    assert(@browser.div(class: "span6", index: 0).p.text.include? "Blender is being made by hundreds of active volunteers from around the world")
	end 
  
end