require 'watir-webdriver'
require 'minitest/autorun'

class BlenderTesting < Minitest::Test

 def setup
    @b = Watir::Browser.new :chrome
    @b.window.resize_to(1024,800)
    @b.goto 'http://www.blender.org/' 
  end
  
 def test_institute_page
    @b.div(class: "span12 sitemap", index: 0).li(index: 5).click  
    assert_equal(@b.title.lstrip, "Blender Institute - blender.org - Home of the Blender project - Free and Open 3D Creation Software")
    assert_equal(@b.url, "http://www.blender.org/institute/")
    assert(@b.div(class: "span4", index: 0).h2.text.include? "Institute for open 3D projects")
	end 
  
    def teardown
    @b.screenshot.save 'output.png' if !passed?
    @b.close
  end
  
end