require 'watir-webdriver'
require 'minitest/autorun'

class BlenderTesting < Minitest::Test

 def setup
    @b = Watir::Browser.new :chrome
    @b.window.resize_to(1024,800)
    @b.goto 'http://www.blender.org/' 
  end
  
  def test_download
    @b.li(id: "menu-item-125").click
    downloads = ['32bit', '64bit', 
                  'DE', 'NL 1', 'NL 2', 
                  'DE', 'NL 1', 'NL 2', 
                  'DE', 'NL 1', 'NL 2',
                  'DE', 'NL 1', 'NL 2',
                  '32bit', '64bit']
    @b.div(id: 'windows').links.each_with_index do |li, i|
      # puts li.text
      assert(li.exists?, "Does link #{li.text} exits")
      assert_equal(li.text, downloads[i])
    end    
    # @b.link(id: 'do_download').each { |elem| elem.exists? }
    # assert(@b.link(id: "do_download", index: 0).exists?) 
    # assert(@b.link(id: "do_download", index: 1).exists?) 
  end
  
  def test_mouse_over
    skip
    @b.div(class: 'depth').fire_event(:onmouseover)
  end
  
  def teardown
    @b.close
  end 
  
 end