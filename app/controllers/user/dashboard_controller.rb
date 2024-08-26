class User::DashboardController < ApplicationController
  before_action :authenticate_user!

  def index
    @users = User.all
      @user = current_user
      @user.update!(login_status: true)
    if @user.role == "user"
      @excires = Exercise.where(user_id: @user.id)
      p "==============="
      p      @excires
    else
       @excires = Exercise.all
      p "==============="
      p      @excires
    end
  end
end
