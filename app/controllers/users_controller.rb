class UsersController < ApplicationController
  # GET /signup
  def new
    @user = User.new
  end

  # POST /users
  def create
    @user = User.new(user_params)

    if @user.save
      redirect_to signup_url, notice: "You have successfully signed up."
    else
      render :new, status: :unprocessable_entity
    end
  end

  private
    # Only allow a list of trusted parameters through.
    def user_params
      params.require(:user).permit(:email)
    end
end
