require 'spec_helper'

describe 'testing the form page' do

  before(:all) do
    @driver = SeleniumQAToolsForm.new
    @driver.visit_practice_form
  end

  context 'positive paths for the registration form and register' do

    it 'should land on the form for page' do
      expect(@driver.getURL).to eq("http://toolsqa.com/automation-practice-form/")
    end

    it 'should accept a first name' do
      @driver.fill_in_first_name_field("Ayman")
      expect(@driver.get_first_name_field_value).to eq("Ayman")
    end

    it 'should accept a last name' do
      @driver.fill_in_last_name_field("Harake")
      expect(@driver.get_last_name_field_value).to eq("Harake")
    end

    it "should accept a gender" do

      @driver.click_male
      expect(@driver.find_male_field.selected?).to be true
    end

        it "should get the amount of experience that user has " do
      @driver.click_experience
      expect(@driver.find_experience_field.selected?).to be true
    end

    it 'should accept a date' do
      @driver.fill_in_date_field("15/10/2018")
      expect(@driver.get_date_value).to eq("15/10/2018")
    end


    it "should get the profession" do
      @driver.click_profession
      expect(@driver.find_profession_field.selected?).to be true
    end

    it "should geth the automation tool" do
      @driver.click_automation_tool
      expect(@driver.find_automation_tool_field.selected?).to be true
    end

    it "should get the continent" do
      @driver.fill_in_continents_field("Europe")
      expect(@driver.get_continents_field_value).to eq("Europe")
    end

    it "should get the selenium command" do
      @driver.click_command("Navigation Commands")
      expect(@driver.get_command_value).to eq("Navigation Commands")
    end
  end
end
