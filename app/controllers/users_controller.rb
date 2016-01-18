class UsersController < ApplicationController
  before_action :require_correct_user, only: [:edit, :update, :destroy]

  def index
  end

  def show
    @user = User.find_by(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to @user, notice: "Thanks for signing up"
    else
      render :new
    end
  end

  def edit
  end

  private
    def user_params
      params.require(:user).permit(:name, :email, :password, :password_confirmation)
    end

    def require_correct_user
      @user = User.find(params[:id])
      redirect_to root_url unless current_user(@user)
    end
end
