require_relative '../minitest_helper'

class PartnersTest < MinitestHelper
  
  
  def test_partners_network_page
    @browser.div(class: "span12 sitemap", index: 0).li(index: 7).flash.click 
    assert_equal(@browser.title.lstrip, "Blender Network - Connecting Blender Professionals")
    assert_equal(@browser.url, "http://www.blendernetwork.org/")
    assert(@browser.div(class: "frontpage hero-unit", index: 0).h3.text.include? "Welcome to the Blender Network")
	end 
    
end