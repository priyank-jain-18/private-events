class UsersController < ApplicationController
  def new
    @user = User.new
  end
  def create
    @user = User.new(user_params)
    if @user.save
      log_in @user
      flash[:success] = "Welcome to the Private Events App!"
      redirect_to @user
    else
      render 'new'
    end
  end
  def index
	      @users = User.all
	end
  def show
    @user = User.find(params[:id])
    @events = @user.events
    @upcoming_events = current_user.upcoming_events
    @prev_events = current_user.previous_events 
  end
private

    def user_params
      params.require(:user).permit(:name, :email)
    end
end

