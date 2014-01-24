require "test_helper"

feature "As a site owner I want to remove lists so that I can remove outdated or incorrect information" do
  scenario "on the list index" do

    list = List.create!(name: "How to not suck at testing")

    visit root_path

    page.find("a[href='/lists/#{list.id}'][data-method='delete']").click

    page.wont_have_content "How to not suck at testing"
  end
end
