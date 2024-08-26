class User::CouresController < ApplicationController
  before_action :authenticate_user!

  def index
    @courses = Course.all
  end

  def new
    @course = Course.new
  end

  def create
    @course = Course.new(course_params)
    if@course.save
      redirect_to user_coures_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @course = Course.find_by_id(:id)
  end

  def update
    @course = Course.find_by_id(:id)
    @course.update!(course_params)
    redirect_to user_coures_path
  end

  private

  def course_params
    params.permit(:course_name, :image)
  end
end
