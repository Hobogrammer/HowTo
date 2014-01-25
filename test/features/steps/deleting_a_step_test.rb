require "test_helper"

feature "As a site owner I want to delete steps so I can delete incorrect content" do
  scenario "on a list page" do
    step = Step.create!(list_id: lists(:rails).id, content: "Delete me!" )
    visit list_path(lists(:rails))

    page.find("a[href='/lists/1/steps/#{step.id}'][data-method='delete']").click

    page.wont_have_content "Delete me!"
  end
end
