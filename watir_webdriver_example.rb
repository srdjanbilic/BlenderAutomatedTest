require 'watir-webdriver'
require 'minitest/autorun'

class WatirExampleTest < Minitest::Test
  
  def setup
    @browser = Watir::Browser.new :chrome
    @browser.goto 'http://bit.ly/watir-example'
  end
  
  def test_watir_example
    # Do sutra zavrsi ovu stranicu, i to kompletnu, jerbo cu da bijem
    user = 'Srdjan DeBilic'
    @browser.text_field(id: 'entry_0').set "A sada, udri!, #{user}"
    assert(@browser.text_field(id: 'entry_0').value.include? user)
    @browser.text_field(id: 'entry_1').set "E moj #{user}, ima tu jos da se petlja, dechache!"
    assert(@browser.text_field(id: 'entry_1').value.include? user)
    
    radio = @browser.label(text: 'What testing tool do you like?').parent.radio(value: 'Watir') 
    assert(radio.exists?)
    radio.set
    assert(radio.set?)
    
    
    @browser.checkbox(value: 'Ruby').set
    @browser.button(:name => 'submit').click 
    @browser.label(:text => 'What language do you like?')
    
    
    #@browser.select_list(:id => 'entry_6').select 'chrome'
    #assert(@browser.select_list(:id => 'entry_6').selected? 'chrome')
    #nece da prodje
    
  
    #@browser.select_list(:name => 'entry.6.single').clear
    #puts browser.select_list(:name => 'entry.6.single').options
    #@browser.select_list(:name => 'entry.6.single').select 'Chrome'
    #@browser.button(:name => 'submit').click
  
    #radio = @browser.label(text: 'How happy are you?').parent.radio(value: '1') 
    #assert(radio.exists?)
    #radio.set
    #assert(radio.set?)
    #ni ovo
    
    sleep 10
  end
  
  def teardown
    @browser.close
  end
  
end