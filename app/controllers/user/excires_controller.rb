class User::ExciresController < ApplicationController
  before_action :set_excrise, only: [:show, :edit, :update, :destroy]

  # GET /user/excires
  def index
    @user = current_user
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

  # GET /user/excires/1
  def show
  end

  # GET /user/excires/new
  def new
    @excrise = Exercise.new
  end

  # POST /user/excires
  def create
    @excrise = Exercise.new(excrise_params)
    if @excrise.save
      redirect_to user_excires_path(@excrise), notice: 'Excrise was successfully created.'
    else
      render :new
    end
  end

  # GET /user/excires/1/edit
  def edit
  end

  # PATCH/PUT /user/excires/1
  def update
    if @excrise.update(excrise_params)
      redirect_to user_excires_path(@excrise), notice: 'Excrise was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /user/excires/1
  def destroy
    @excrise.destroy
    redirect_to user_excires_path, notice: 'Excrise was successfully deleted.'
  end

  def sumbit_code
    @excrise = Exercise.find(params[:id])
    @excrise.update!(code_sumbit:params[:code_sumbit])
    redirect_to user_excires_path, notice: 'Excrise was successfully updated'
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_excrise
    @excrise = Exercise.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def excrise_params
    params.permit(:title, :user_id, :course_id)
  end
end
