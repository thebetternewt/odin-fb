require 'rails_helper'

RSpec.describe "static_pages/home.html.erb", type: :view do
  # pending "add some examples to (or delete) #{__FILE__}"
  it "has a log in button" do
    render
    expect(rendered).to have_link 'Log in', href: '#'
  end
end
