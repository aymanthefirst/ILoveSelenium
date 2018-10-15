require "selenium-webdriver"

class SeleniumQAToolsForm
  PRACTICE_FORM_URL = "http://toolsqa.com/automation-practice-form"
  FIRST_NAME_FIELD_NAME = "firstname"
  LAST_NAME_FIELD_NAME = "lastname"
  MALE = "sex-0"
  DATE = "datepicker"
  EXP = "exp-0"
  PROFESSION = "profession-0"
  AUTOMATION_TOOL = "tool-0"
  CONTINENTS = "continents"
  COMMANDS = "selenium_commands"
  SUBMIT = "submit"

  def initialize
    @chrome_driver = Selenium::WebDriver.for(:chrome)
  end

  def visit_practice_form
    @chrome_driver.get(PRACTICE_FORM_URL)
  end

  def find_automation_tool_field
    @chrome_driver.find_element(:id, AUTOMATION_TOOL)
  end

  def find_submit_button
    @chrome_driver.find_element(:id, SUBMIT)
  end

  def click_submit_button()
    find_submit_button.click
  end

  def click_automation_tool()
    find_automation_tool_field.click
  end


  def find_profession_field
    @chrome_driver.find_element(:id, PROFESSION)
  end

  def click_profession()
    find_profession_field.click
  end

  def find_first_name_field
    @chrome_driver.find_element(:name, FIRST_NAME_FIELD_NAME)
  end

  def find_experience_field
    @chrome_driver.find_element(:id, EXP)
  end

  def click_experience()
    find_experience_field.click
  end

  def find_last_name_field
    @chrome_driver.find_element(:name, LAST_NAME_FIELD_NAME)
  end

  def find_male_field
    @chrome_driver.find_element(:id, MALE)
  end

  def find_date_field
    @chrome_driver.find_element(:id, DATE)
  end

  def fill_in_first_name_field(first_name)
    find_first_name_field.send_keys(first_name)
  end

  def fill_in_last_name_field(last_name)
    find_last_name_field.send_keys(last_name)
  end

  def click_male()
    find_male_field.click
  end

  def fill_in_date_field(date)
    find_date_field.send_keys(date)
  end

  def get_first_name_field_value
    find_first_name_field["value"]
  end

  def get_last_name_field_value
    find_last_name_field["value"]
  end


  def get_date_value
    find_date_field["value"]
  end

  def find_continents_field
    @chrome_driver.find_element(:name, CONTINENTS)
  end

  def fill_in_continents_field(continents)
    find_continents_field.send_keys(continents)
  end

  def get_continents_field_value
    find_continents_field["value"]
  end

  def find_command_fields
    @chrome_driver.find_element(:id, COMMANDS).find_elements(:tag_name, "option")
    # results.each do |v|
    #   puts v.text
    # end

  end

  def click_command(command)
    find_command_fields.each do |g|
      if g.text == command
      g.click
      end
    end

  end

  def get_command_value
    theReturn = ""
    find_command_fields.each do |g|
      if g.selected?
      theReturn =  g.text
      end
    end
    theReturn
  end

  def getURL
     @chrome_driver.current_url
  end

end

# I know I am not supposed to keep commented out code but i want to ask someone about this tomorrow.

# practice_form = SeleniumQAToolsForm.new
# practice_form.visit_practice_form

# practice_form.click_command("Navigation Commands")
# puts practice_form.get_command_value
