require_relative '../minitest_helper'

class SupportTest < MinitestHelper
  
  
 def test_support_page
    @browser.li(id: 'menu-item-126').click
    assert_equal(@browser.title.lstrip, "Support - blender.org - Home of the Blender project - Free and Open 3D Creation Software")
    assert_equal(@browser.url, "http://www.blender.org/support/")
    assert(@browser.div(class: "span4 box", index: 0).h2.text.include? "Online Manual")
	end 
  
end