require_relative '../minitest_helper'

class AboutPageTest < MinitestHelper
  
  def test_about_page
    @browser.li(id: 'menu-item-164').flash.click
    assert_equal(@browser.title.lstrip, "About - blender.org - Home of the Blender project - Free and Open 3D Creation Software")
    assert_equal(@browser.url, "http://www.blender.org/about/")
    assert(@browser.div(class: "span6", index: 0).h1.text.include? "The organization")
  end 
    
end