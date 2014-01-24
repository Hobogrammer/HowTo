require "test_helper"

feature "As a site owner I want to be able to edit a list name so I can correct my fu** ups" do
  scenario "viewing the list index" do
    visit root_path

    click_on "Edit"

    fill_in "Name", with: "Something Random"

    click_on "Update List"

    page.must_have_content "Something Random"
  end
end
