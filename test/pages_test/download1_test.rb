require_relative '../minitest_helper'

class Download1Test < MinitestHelper
  

  def test_download_page  
    assert(@browser.li(id: "menu-item-125").exists?)    
    @browser.li(id: "menu-item-125").flash.click
    assert_equal(@browser.title.lstrip, "Download - blender.org - Home of the Blender project - Free and Open 3D Creation Software")
	assert_equal(@browser.url, "http://www.blender.org/download/")
    assert(@browser.div(id:"windows").exists?)
    assert(@browser.div(class: "carousel-caption bottom left", index: 0).h1.text.include? "Blender 2.70")
    #assert(@browser.div(class: "introduction", index: 0).h1.text.include? "Download Blender 2.70a for Windows")
    assert(@browser.div(class: "introduction", index: 0).p(index: 0).text.include? "Blender 2.70a is the latest stable release from the Blender Foundation")
    assert(@browser.div(class: "introduction", index: 0).p(index: 0).text.include? "To download it, please select your platform and location. Blender is Free & Open Source Software")
    assert(@browser.div(class: "introduction", index: 0).p(index: 0).text.include? "Blender 2.70a was released on April 11, 2014")
    assert(@browser.div(class: "introduction", index: 0).p(index: 2).text.include? "The release logs for this release can be found here.")
    
    assert(@browser.div(class: "widget widget_text widgetable-wrap", index: 0).h4.text.include? "Open Animation Film - Crowd funding now!")
    
    assert(@browser.div(class: "widget widget_text widgetable-wrap", index: 0).img(alt: "gb-promo2").exists?)
    assert(@browser.div(class: "widget widget_text widgetable-wrap", index: 1).h4.text.include? "Donate to the Blender Foundation")

    assert(@browser.div(class: "clearfix").exists?)
    
   
    
    assert(@browser.div(class:"depth_text").exists?)
    assert(@browser.i(class:"icon-download").exists?)
    
    assert(@browser.div(class: "well", index: 0).h3.text.include? "How do I install Blender?")
    assert(@browser.div(class: "well", index: 0).text.include? "To install Blender, download the appropriate package for your platform. The Windows version comes with an optional self-extracting installer, for other operating systems you can simply unpack the compressed file to the location of your choice.")
    assert(@browser.div(class: "well", index: 0).text.include? "Provided the Blender binary is in the original extracted directory, Blender will run straight out of the box. No system libraries or system preferences are altered.")
    
    assert(@browser.div(class: "span12 sitemap", index: 0).h4.text.include? "Blender")
    assert(@browser.div(class: "span12 sitemap", index: 0).li(index: 0).text.include? "Download")
    @browser.div(class: "span12 sitemap", index: 0).li(index: 0).click
    assert(@browser.div(class: "span12 sitemap", index: 0).li(index: 1).text.include? "Source code")
    @browser.div(class: "span12 sitemap", index: 0).li(index: 1).click
    assert(@browser.div(class: "span12 sitemap", index: 0).li(index: 2).text.include? "Features")
    assert(@browser.div(class: "span12 sitemap", index: 0).li(index: 3).text.include? "Documentation")
    
    assert(@browser.div(class: "span12 sitemap", index: 0).h4(index: 1).text.include? "Organization")
    assert(@browser.div(class: "span12 sitemap", index: 0).li(index: 4).text.include? "Foundation")
    assert(@browser.div(class: "span12 sitemap", index: 0).li(index: 5).text.include? "Institute")
    assert(@browser.div(class: "span12 sitemap", index: 0).li(index: 6).text.include? "Developers")
    assert(@browser.div(class: "span12 sitemap", index: 0).li(index: 7).text.include? "Partners Network")
    
    assert(@browser.div(class: "span12 sitemap", index: 0).h4(index: 2).text.include? "Get Involved")
    assert(@browser.div(class: "span12 sitemap", index: 0).li(index: 8).text.include? "Software")
    assert(@browser.div(class: "span12 sitemap", index: 0).li(index: 9).text.include? "Websites and docs")
    assert(@browser.div(class: "span12 sitemap", index: 0).li(index: 10).text.include? "Donations")
    assert(@browser.div(class: "span12 sitemap", index: 0).li(index: 11).text.include? "Conferences")
    
    assert(@browser.div(class: "span12 sitemap", index: 0).h4(index: 3).text.include? "blender.org")
    assert(@browser.div(class: "span12 sitemap", index: 0).li(index: 12).text.include? "News")
    assert(@browser.div(class: "span12 sitemap", index: 0).li(index: 13).text.include? "Contact us")
    assert(@browser.div(class: "span12 sitemap", index: 0).li(index: 14).text.include? "Trademark and logo")
    assert(@browser.div(class: "span12 sitemap", index: 0).li(index: 15).text.include? "Website license")
    
    
    @browser.div(class: "container download", index: 0).li(index: 0).click
    @browser.div(class: "container download", index: 0).li(index: 1).click
    @browser.div(class: "container download", index: 0).li(index: 2).click
    @browser.div(class: "container download", index: 0).li(index: 3).click
    @browser.div(class: "container download", index: 0).li(index: 4).click 
    
    assert(@browser.li(class: "page_item page-item-127").exists?)
    @browser.li(class: "page_item page-item-127").flash.click
    assert(@browser.li(class: "page_item page-item-112").exists?)
    @browser.li(class: "page_item page-item-112").flash.click
    assert(@browser.li(class: "page_item page-item-157").exists?)
    @browser.li(class: "page_item page-item-157").flash.click
    @browser.div(class: "span12 sitemap", index: 0).li(index: 3).click    
     
  end
  
end