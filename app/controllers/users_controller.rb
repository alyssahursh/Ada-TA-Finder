class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy, :decision, :make_student, :make_tutor]

  # GET /users
  # GET /users.json

  def index
    @users = User.where(at_ada: true).or.where(remote: true).order("available DESC", "at_ada DESC").all

    @encouragement = [
      "Drink some water.",
      "Call your person.",
      "Take a stretch break.",
      "Try talking it out with you rubber duck.",
      "Ask a friend to listen to you talk through your problem.",
      "Go for a short walk.",
      "Put on your favorite music and take a little break.",
      "Close your laptop for a few minutes.",
      "Did you restart your server?"
    ].sample
  end

  # GET /users/1
  # GET /users/1.json
  def show
  end

  # GET /users/new
  def new
    @user = User.new
  end

  # GET /users/1/edit
  def edit
  end

  def decision
  end

  def make_student
      @user.student = true
      @user.save

      redirect_to users_path
  end

  def make_tutor
      @user.student = false
      @user.save

      redirect_to user_path(@user)
  end

  # POST /users
  # POST /users.json
  def create
    @user = User.new(user_params)

    respond_to do |format|
      if @user.save
        format.html { redirect_to @user, notice: 'User was successfully created.' }
        format.json { render :show, status: :created, location: @user }
      else
        format.html { render :new }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /users/1
  # PATCH/PUT /users/1.json
  def update
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to @user, notice: 'User was successfully updated.' }
        format.json { render :show, status: :ok, location: @user }
      else
        format.html { render :edit }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    @user.destroy
    respond_to do |format|
      format.html { redirect_to users_url, notice: 'User was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit(:name, :email, :twitter, :screenhero, :company, :languages, :pronouns, :at_ada, :remote, :available, :physical_description)
    end
end
