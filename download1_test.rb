require 'watir-webdriver'
require 'minitest/autorun'

class BlenderTesting < Minitest::Test

 def setup
    @b = Watir::Browser.new :chrome
    @b.window.resize_to(1024,800)
    @b.goto 'http://www.blender.org/' 
  end

  def test_download_page  
    assert(@b.li(id: "menu-item-125").exists?)    
    @b.li(id: "menu-item-125").click
    assert_equal(@b.title.lstrip, "Download - blender.org - Home of the Blender project - Free and Open 3D Creation Software")
	assert_equal(@b.url, "http://www.blender.org/download/")
    assert(@b.div(id:"windows").exists?)
    assert(@b.div(class: "carousel-caption bottom left", index: 0).h1.text.include? "Blender 2.70")
    #assert(@b.div(class: "introduction", index: 0).h1.text.include? "Download Blender 2.70a for Windows")
    assert(@b.div(class: "introduction", index: 0).p(index: 0).text.include? "Blender 2.70a is the latest stable release from the Blender Foundation")
    assert(@b.div(class: "introduction", index: 0).p(index: 0).text.include? "To download it, please select your platform and location. Blender is Free & Open Source Software")
    assert(@b.div(class: "introduction", index: 0).p(index: 0).text.include? "Blender 2.70a was released on April 11, 2014")
    assert(@b.div(class: "introduction", index: 0).p(index: 2).text.include? "The release logs for this release can be found here.")
    
    assert(@b.div(class: "widget widget_text widgetable-wrap", index: 0).h4.text.include? "Open Animation Film - Crowd funding now!")
    
    assert(@b.div(class: "widget widget_text widgetable-wrap", index: 0).img(alt: "gb-promo2").exists?)
    assert(@b.div(class: "widget widget_text widgetable-wrap", index: 1).h4.text.include? "Donate to the Blender Foundation")

    assert(@b.div(class: "clearfix").exists?)
    
   
    
    assert(@b.div(class:"depth_text").exists?)
    assert(@b.i(class:"icon-download").exists?)
    
    assert(@b.div(class: "well", index: 0).h3.text.include? "How do I install Blender?")
    assert(@b.div(class: "well", index: 0).text.include? "To install Blender, download the appropriate package for your platform. The Windows version comes with an optional self-extracting installer, for other operating systems you can simply unpack the compressed file to the location of your choice.")
    assert(@b.div(class: "well", index: 0).text.include? "Provided the Blender binary is in the original extracted directory, Blender will run straight out of the box. No system libraries or system preferences are altered.")
    
    assert(@b.div(class: "span12 sitemap", index: 0).h4.text.include? "Blender")
    assert(@b.div(class: "span12 sitemap", index: 0).li(index: 0).text.include? "Download")
    @b.div(class: "span12 sitemap", index: 0).li(index: 0).click
    assert(@b.div(class: "span12 sitemap", index: 0).li(index: 1).text.include? "Source code")
    @b.div(class: "span12 sitemap", index: 0).li(index: 1).click
    assert(@b.div(class: "span12 sitemap", index: 0).li(index: 2).text.include? "Features")
    assert(@b.div(class: "span12 sitemap", index: 0).li(index: 3).text.include? "Documentation")
    
    assert(@b.div(class: "span12 sitemap", index: 0).h4(index: 1).text.include? "Organization")
    assert(@b.div(class: "span12 sitemap", index: 0).li(index: 4).text.include? "Foundation")
    assert(@b.div(class: "span12 sitemap", index: 0).li(index: 5).text.include? "Institute")
    assert(@b.div(class: "span12 sitemap", index: 0).li(index: 6).text.include? "Developers")
    assert(@b.div(class: "span12 sitemap", index: 0).li(index: 7).text.include? "Partners Network")
    
    assert(@b.div(class: "span12 sitemap", index: 0).h4(index: 2).text.include? "Get Involved")
    assert(@b.div(class: "span12 sitemap", index: 0).li(index: 8).text.include? "Software")
    assert(@b.div(class: "span12 sitemap", index: 0).li(index: 9).text.include? "Websites and docs")
    assert(@b.div(class: "span12 sitemap", index: 0).li(index: 10).text.include? "Donations")
    assert(@b.div(class: "span12 sitemap", index: 0).li(index: 11).text.include? "Conferences")
    
    assert(@b.div(class: "span12 sitemap", index: 0).h4(index: 3).text.include? "blender.org")
    assert(@b.div(class: "span12 sitemap", index: 0).li(index: 12).text.include? "News")
    assert(@b.div(class: "span12 sitemap", index: 0).li(index: 13).text.include? "Contact us")
    assert(@b.div(class: "span12 sitemap", index: 0).li(index: 14).text.include? "Trademark and logo")
    assert(@b.div(class: "span12 sitemap", index: 0).li(index: 15).text.include? "Website license")
    
    
    @b.div(class: "container download", index: 0).li(index: 0).click
    @b.div(class: "container download", index: 0).li(index: 1).click
    @b.div(class: "container download", index: 0).li(index: 2).click
    @b.div(class: "container download", index: 0).li(index: 3).click
    @b.div(class: "container download", index: 0).li(index: 4).click 
    
    assert(@b.li(class: "page_item page-item-127").exists?)
    @b.li(class: "page_item page-item-127").click
    assert(@b.li(class: "page_item page-item-112").exists?)
    @b.li(class: "page_item page-item-112").click
    assert(@b.li(class: "page_item page-item-157").exists?)
    @b.li(class: "page_item page-item-157").click
    @b.div(class: "span12 sitemap", index: 0).li(index: 3).click    
     
  end
  
   def teardown
    @b.screenshot.save 'output.png' if !passed?
    @b.close
  end
  
end