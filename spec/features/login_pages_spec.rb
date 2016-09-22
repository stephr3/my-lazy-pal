require 'rails_helper'

describe "user login path" do
  it "will allow user to login" do
    FactoryGirl.create(:user)
    visit root_path
    click_link "User Login"
    fill_in "Username", with: "steph"
    fill_in "Password", with: "1111"
    click_button "Log in"
    expect(page).to have_content "Welcome"
  end

  it 'will show error if user is not authenticated' do
    FactoryGirl.create(:user)
    visit root_path
    click_link "User Login"
    fill_in "Username", with: "steph"
    fill_in "Password", with: "badpassword"
    click_button "Log in"
    expect(page).to have_content "problem"
  end
end
