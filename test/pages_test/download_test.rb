require_relative '../minitest_helper'

class DownloadTest < MinitestHelper
  
  
  def test_download
    @browser.li(id: "menu-item-125").flash.click
    downloads = ['32bit', '64bit', 
                  'DE', 'NL 1', 'NL 2', 
                  'DE', 'NL 1', 'NL 2', 
                  'DE', 'NL 1', 'NL 2',
                  'DE', 'NL 1', 'NL 2',
                  '32bit', '64bit']
    @browser.div(id: 'windows').links.each_with_index do |li, i|
      # puts li.text
      assert(li.exists?, "Does link #{li.text} exits")
      assert_equal(li.text, downloads[i])
    end    
    # @browser.link(id: 'do_download').each { |elem| elem.exists? }
    # assert(@browser.link(id: "do_download", index: 0).exists?) 
    # assert(@browser.link(id: "do_download", index: 1).exists?) 
  end
  
  def test_mouse_over
    skip
    @browser.div(class: 'depth').fire_event(:onmouseover)
  end
  
 end