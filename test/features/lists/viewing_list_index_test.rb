require "test_helper"

feature "As a site owner I want to view the list index so I can see my lists" do
  scenario "going to root" do
    visit root_path

    page.must_have_content "Lists"
  end
end
