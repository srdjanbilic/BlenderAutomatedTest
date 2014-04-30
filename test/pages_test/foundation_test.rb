require_relative '../minitest_helper'

class FoundationTest < MinitestHelper
  
  
def test_foundation_page
    @browser.div(class: "span12 sitemap", index: 0).li(index: 4).click  
    assert_equal(@browser.title.lstrip, "Blender Foundation - blender.org - Home of the Blender project - Free and Open 3D Creation Software")
    assert_equal(@browser.url, "http://www.blender.org/foundation/")
    assert(@browser.div(class: "span6", index: 0).h2.text.include? "Goals")
	end 
  
end