require 'rails_helper'

describe "add a show path" do
  it "will allow user to add a show", js: true do
    user = FactoryGirl.create(:user)
    visit user_path(user)
    click_button "Add a New Show"
    fill_in "Name", with: "X Files"
    fill_in "Description", with: "A great show!"
    choose "TV"
    select("Sci Fi", from: 'category-select')
    click_button 'Add Show'
    expect(page).to have_content "successfully added"
  end

  it "will show a alert when a show is not successfully added", js: true do
    user = FactoryGirl.create(:user)
    visit user_path(user)
    click_button "Add a New Show"
    fill_in "Name", with: ""
    fill_in "Description", with: "A great show!"
    choose "TV"
    select("Sci Fi", from: 'category-select')
    click_button 'Add Show'
    expect(page).to have_content "Sorry, your show has not been added."
  end
end
