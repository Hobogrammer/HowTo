require "test_helper"

feature "As a site owner I want to edit steps do that I may correct incorrect information" do
  scenario "viewing the a list" do
    visit list_path(lists(:rails))

    click_on "Edit"

    fill_in "Content", with: "Write a test"

    click_on "Update Step"

    page.must_have_content "Write a test"
    page.wont_have_content lists(:rails).content
  end
end
