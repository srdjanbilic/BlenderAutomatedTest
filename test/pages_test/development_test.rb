require_relative '../minitest_helper'

class DevelopmentTest < MinitestHelper
  
  
  def test_developers_page
    @browser.div(class: "span12 sitemap", index: 0).li(index: 6).click 
    assert_equal(@browser.title.lstrip, "Development - blender.org - Home of the Blender project - Free and Open 3D Creation Software")
    assert_equal(@browser.url, "http://www.blender.org/get-involved/developers/")
    assert(@browser.div(class: "span6 box", index: 0).h2.text.include? "How to Get Started")
	end 
  
end