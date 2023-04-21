class ProfilePageController < ApplicationController
  before_action :authenticate_user!

  def show
    render json: {
      message: "This is a private message for #{current_user.email} you should only see if you've got a correct token",
      data: {
        email: current_user.email,
        name: "HARDCODED TEST NAME!",
        profile_pic: "HARDCODED PROFILE PICTURE!"
      }
    }
  end
end
