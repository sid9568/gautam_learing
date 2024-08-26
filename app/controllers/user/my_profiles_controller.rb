class User::MyProfilesController < ApplicationController
  before_action :authenticate_user!

  def index
  end
end
