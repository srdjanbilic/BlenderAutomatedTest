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
    
    @browser.radio(id: 'group_2_1').set
    
    assert(@browser.radio())
    
    (1..3).each do |number|
      @browser.checkbox(id: 'groups_4_1').set
    end
    
    @browser.select_list(:id => 'entry_6').select 'Chrome' #Zar ne vidis da je veliko slovo?
    
    assert(@browser.select_list(:id => 'entry_6').selected? 'Chrome')
    #nece da prodje => Oce, oce!
  
    @browser.radio(id: 'group_8_1').set
        
    @browser.button(:name => 'submit').click
        
  end
  
  def teardown
    @browser.close
  end
  
end