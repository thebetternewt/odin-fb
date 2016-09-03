require 'rails_helper'

RSpec.describe "UserLogins", type: :feature do
  it "user log in, and log out correctly" do
    user = FactoryGirl.create(:user)
    visit root_url
    click_link "Log in"
    fill_in "Email", with: user.email
    fill_in "Password", with: user.password
    click_button "Log in"
    expect(page).to have_selector("a", text: "Profile")
    expect(page).to have_selector("a", text: "Log out")
    expect(page).to have_no_selector("a", text: "Log in")
    expect(page).to have_no_selector("a", text: "Sign up")

    click_link "Log out"
    expect(page).to have_selector("a", text: "Log in")
    expect(page).to have_selector("a", text: "Sign up")
    expect(page).to have_no_selector("a", text: "Log out")
  end

end
