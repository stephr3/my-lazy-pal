class BingesController < ApplicationController

  def new
    @user = User.find(params[:user_id])
    @binge = Binge.new
  end

  def create
    @user = User.find(params[:user_id])
    @show = Show.find_by(name: params[:show])
    if @show
      @binge = @user.binges.new(binge_params)
      @binge.show = @show
      if @binge.save
        flash[:notice] = "You have successfully logged your binge session!"
        redirect_to :back
      else
        flash[:alert] = "Your session has not been saved."
        render :new
      end
    else
      flash[:alert] = "The entered show is not in the database. Please add the show."
      redirect_to :back
    end
  end


  private
   def binge_params
     params.require(:binge).permit(:start, :finish)
   end
end
