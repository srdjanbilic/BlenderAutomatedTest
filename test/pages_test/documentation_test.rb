require_relative '../minitest_helper'

class DocumentationTest < MinitestHelper
  
  
 def test_documentation_page
    @browser.div(class: "span12 sitemap", index: 0).li(index: 3).click  
    assert_equal(@browser.title.lstrip, "Doc:2.6/Manual - BlenderWiki")
    assert_equal(@browser.url, "http://wiki.blender.org/index.php/Doc:2.6/Manual")
    assert(@browser.div(id: "bodyContent", index: 0).text.include? "User Manual")
	end 
  

end