require 'watir-webdriver'
require 'minitest/autorun'

class WatirExampleTest < Minitest::Test
  
  def setup
    @browser = Watir::Browser.new :chrome
    @browser.goto 'http://www.honda-srbija.rs/pocetna_strana.1.html'
  end
  
  def test_page
    @browser.link(text: 'Motocikli').flash.click 
    assert(@browser.link(text: 'Motocikli').exists?)
    assert(@browser.div(id: 'MotocikliMenu').exists?)
    @browser.div(id: 'MotocikliMenu').hover
    @browser.link(text: 'Super Sport').flash.click
    #@browser.div(link: '/motocikli/super_sport/cbr1000rr_fireblade.238.html').click 
    
  end
  
  def teardown
    @browser.screenshot.save 'output.png' if !passed?
    @browser.close
  end
  
end