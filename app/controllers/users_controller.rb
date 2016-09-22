class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def show
    @user = User.find(params[:id])
    @binge = @user.binges.new
    @binges = total_binge_hours(@user.binges)
  end

  def create
    @user = User.new(user_params)
    if @user.save
     flash[:notice] = "Welcome to the site!"
     session[:user_id] = @user.id
     redirect_to user_path(@user)
    else
     flash[:alert] = "There was a problem creating your account. Please try again."
     redirect_to :back
    end
  end

  def total_binge_hours(binges)
    total_hours = 0
    binges.each do |binge|
      total_hours += ((((binge.finish).to_i  - (binge.start).to_i))/3600)
    end
    return total_hours
  end

private
   def user_params
     params.require(:user).permit(:username, :password)
   end
end
