require 'rails_helper'

describe "user account creation path" do
  it "will allow user to create a new account" do
    visit root_path
    click_link "Create Account"
    fill_in "Username", with: "Stephanie"
    fill_in "Password", with: "1111"
    fill_in "Password confirmation", with: "1111"
    click_button "Create Account"
    expect(page).to have_content "Welcome"
  end
end
