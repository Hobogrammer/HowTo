require "test_helper"

feature "As a user I would like to view a list so that I can see the steps" do
  scenario "clicking a list link" do
    list = lists(:rails)
    visit list_path(list)

    page.must_have_content list.name
    page.wont_have_content "Lists Index"
  end
end
