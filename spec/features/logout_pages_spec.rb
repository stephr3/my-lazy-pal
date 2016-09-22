require 'rails_helper'

describe "user logout path" do
  it "will allow user to log out" do
    FactoryGirl.create(:user)
    visit root_path
    click_link "User Login"
    fill_in "Username", with: "steph"
    fill_in "Password", with: "1111"
    click_button "Log in"
    click_link "Log out"
    expect(page).to have_content "logged out"
  end
end
