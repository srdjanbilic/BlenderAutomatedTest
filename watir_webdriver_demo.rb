require 'watir-webdriver'
require 'minitest/autorun'

class WatirWebdriverDemoPage < Minitest::Test
  def setup
    @browser = Watir::Browser.new :chrome
    @browser.goto 'bit.ly/watir-webdriver-demo'
  end
  
  def test_web_elements
    name = 'Srdjan Bilic'
    @browser.text_field(:id => 'entry_0').set name
    #assert_equal(name, @browser.text_field(id: 'entry_0').text)
    @browser.select_list(:id => 'entry_1').select 'Ruby'
    assert(@browser.select_list(:id => 'entry_1').selected? 'Ruby')
    radio = @browser.label(text: 'What is ruby?').parent.radio(value: 'A programming language') 
    assert(radio.exists?)
    radio.set
    assert(radio.set?)
    @browser.button(:name => 'submit').click # Finish query
    @browser.label(:text => 'What is ruby?')
    assert(@browser.text.include? 'Thank you')
  end
  
  def teardown
    @browser.close
  end
end