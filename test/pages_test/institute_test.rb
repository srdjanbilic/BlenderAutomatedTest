require_relative '../minitest_helper'

class InstituteTest < MinitestHelper
  
  
 def test_institute_page
    @browser.div(class: "span12 sitemap", index: 0).li(index: 5).click  
    assert_equal(@browser.title.lstrip, "Blender Institute - blender.org - Home of the Blender project - Free and Open 3D Creation Software")
    assert_equal(@browser.url, "http://www.blender.org/institute/")
    assert(@browser.div(class: "span4", index: 0).h2.text.include? "Institute for open 3D projects")
	end 
  
end