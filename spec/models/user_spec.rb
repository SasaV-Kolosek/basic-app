require 'rails_helper'

RSpec.describe User, type: :model do
  it "is valid with a well-formed email" do
    expect(User.new(email: "jane@example.com")).to be_valid
  end

  it "is invalid without an email" do
    user = User.new(email: "")

    expect(user).not_to be_valid
    expect(user.errors.full_messages).to eq(["Email can't be blank"])
  end

  ["plainaddress", "jane@", "@example.com", "jane example@example.com"].each do |email|
    it "is invalid with a malformed email (#{email.inspect})" do
      user = User.new(email: email)

      expect(user).not_to be_valid
      expect(user.errors.full_messages).to eq(["Email must be a valid email address"])
    end
  end
end
