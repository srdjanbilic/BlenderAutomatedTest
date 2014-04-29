require 'watir-webdriver'
require 'minitest/autorun'

class BlenderTesting < Minitest::Test

 def setup
    @b = Watir::Browser.new :chrome
    @b.window.resize_to(1024,800)
    @b.goto 'http://www.blender.org/' 
  end
  
  def test_partners_network_page
    @b.div(class: "span12 sitemap", index: 0).li(index: 7).click 
    assert_equal(@b.title.lstrip, "Blender Network - Connecting Blender Professionals")
    assert_equal(@b.url, "http://www.blendernetwork.org/")
    assert(@b.div(class: "frontpage hero-unit", index: 0).h3.text.include? "Welcome to the Blender Network")
	end 
  
    def teardown
    @b.screenshot.save 'output.png' if !passed?
    @b.close
  end
  
end