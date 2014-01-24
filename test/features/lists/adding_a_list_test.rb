require "test_helper"

feature "As a site owner I would like to add more lists so that I can add more content" do
  scenario "creating a list" do
    visit new_list_path

    fill_in "Name", with: "How to make a new list"

    click_on "Create List"

    page.must_have_content "How to make a new list"
    page.wont_have_content "Lists Index"
  end
end
