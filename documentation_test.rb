require 'watir-webdriver'
require 'minitest/autorun'

class BlenderTesting < Minitest::Test

 def setup
    @b = Watir::Browser.new :chrome
    @b.window.resize_to(1024,800)
    @b.goto 'http://www.blender.org/' 
  end
  
 def test_documentation_page
    @b.div(class: "span12 sitemap", index: 0).li(index: 3).click  
    assert_equal(@b.title.lstrip, "Doc:2.6/Manual - BlenderWiki")
    assert_equal(@b.url, "http://wiki.blender.org/index.php/Doc:2.6/Manual")
    assert(@b.div(id: "bodyContent", index: 0).text.include? "User Manual")
	end 
  
    def teardown
    @b.screenshot.save 'output.png' if !passed?
    @b.close
  end
  
end