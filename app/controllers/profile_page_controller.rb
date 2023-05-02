class ProfilePageController < ApplicationController
  before_action :authenticate_user!
  def show
    render json: {
      message: "This is a private message for #{current_user.email} you should only see if you've got a correct token",
      data: {
        email: current_user.email,
        name: current_user.name,
        username: current_user.username,
        profile_pic: current_user.profile_pic
      }
    }
  end
end
