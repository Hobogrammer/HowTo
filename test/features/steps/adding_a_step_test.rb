require "test_helper"

feature "As a site owner I want to add steps to my lists so that I can have content" do
  scenario "visiting a list" do
    visit list_path(lists(:rails))

    click_on "Add A Step"

    fill_in "Content", with: "Make a test"

    click_on "Create Step"

    page.must_have_content lists(:rails).name
    page.must_have_content "Make a test"
  end
end
