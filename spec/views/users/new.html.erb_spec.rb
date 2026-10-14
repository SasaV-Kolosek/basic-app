require 'rails_helper'

RSpec.describe "users/new", type: :view do
  it "renders the sign-up form" do
    assign(:user, User.new)

    render

    assert_select "form[action=?][method=?]", users_path, "post" do
      assert_select "input[name=?]", "user[email]"
    end
    assert_select "#error_explanation", count: 0
  end

  it "renders validation errors for an invalid email" do
    user = User.new(email: "not-an-email")
    user.validate
    assign(:user, user)

    render

    assert_select "#error_explanation" do
      assert_select "li", text: "Email must be a valid email address"
    end
  end
end
