class CurrentUserController < ApplicationController
  before_action :authenticate_user!
  before_action :set_current_user, only: %i[ update ]

  def index
    render json: current_user, status: :ok
  end

  def update
    if @user.update(user_params)
      render json: @user
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  private
  def set_current_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:name, :username, :email, :profile_pic)
  end
end
