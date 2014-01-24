require "test_helper"

feature "As a site owner I want to be able to edit a list name so I can correct my fu** ups" do
  scenario "viewing the list index" do
    visit root_path


    page.must_have_content "Hello World"
    page.wont_have_content "Goobye All!"
  end
end
