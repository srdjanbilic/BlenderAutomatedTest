require 'watir-webdriver'
require 'minitest/autorun'

class BlenderTesting < Minitest::Test

 def setup
    @b = Watir::Browser.new :chrome
    @b.window.resize_to(1024,800)
    @b.goto 'http://www.blender.org/' 
  end
  
  def test_developers_page
    @b.div(class: "span12 sitemap", index: 0).li(index: 6).click 
    assert_equal(@b.title.lstrip, "Development - blender.org - Home of the Blender project - Free and Open 3D Creation Software")
    assert_equal(@b.url, "http://www.blender.org/get-involved/developers/")
    assert(@b.div(class: "span6 box", index: 0).h2.text.include? "How to Get Started")
	end 
  
    def teardown
    @b.screenshot.save 'output.png' if !passed?
    @b.close
  end
  
end