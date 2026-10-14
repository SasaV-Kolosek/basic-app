require 'rails_helper'

RSpec.describe "/users", type: :request do
  describe "GET /signup" do
    it "renders the sign-up form" do
      get signup_url

      expect(response).to be_successful
      expect(response.body).to include("Sign up")
    end
  end

  describe "POST /users" do
    context "with a valid email" do
      it "creates a new User and redirects" do
        expect {
          post users_url, params: { user: { email: "jane@example.com" } }
        }.to change(User, :count).by(1)

        expect(response).to redirect_to(signup_url)
      end
    end

    context "with an invalid email" do
      it "does not create a User" do
        expect {
          post users_url, params: { user: { email: "not-an-email" } }
        }.not_to change(User, :count)
      end

      it "re-renders the form with a validation error" do
        post users_url, params: { user: { email: "not-an-email" } }

        expect(response).to have_http_status(:unprocessable_entity)
        expect(response.body).to include("Email must be a valid email address")
      end
    end

    context "with a blank email" do
      it "re-renders the form with a validation error" do
        post users_url, params: { user: { email: "" } }

        expect(response).to have_http_status(:unprocessable_entity)
        expect(response.body).to include("Email can&#39;t be blank")
      end
    end
  end
end
