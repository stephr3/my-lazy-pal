class BingesController < ApplicationController

  def new
    @user = User.find(params[:user_id])
    @binge = @user.binges.new
  end

  def create
    @user = User.find(params[:user_id])
    @binge = @user.binges.new(binge_params)
  end


  private
   def binge_params
     params.require(:binge).permit(:start, :finish)
   end
end
