require 'watir-webdriver'
require 'minitest/autorun'

class MinitestHelper < Minitest::Test
  
  def setup
    @browser = Watir::Browser.new
    @browser.window.resize_to(1024,800)
    @browser.goto 'http://www.blender.org/' 
  end
  
  def teardown
    @browser.screenshot.save 'output.png' if !passed?
    @browser.close
  end
  
end