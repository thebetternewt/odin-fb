require 'rails_helper'

RSpec.describe "EditUsers", type: :feature do
  it "updates user correctly" do
    user = FactoryGirl.create(:user)
    name = "Chris Example2"
    bio = "This is a little bit about me."
    sign_in user
    visit root_url
    click_link "Profile"
    click_link "Edit Profile"
    fill_in "Name", with: name
    fill_in "Bio", with: bio
    click_button "Update"
    visit user_path user
    expect(page).to have_content(name)
    expect(page).to have_content(bio)

  end
end
