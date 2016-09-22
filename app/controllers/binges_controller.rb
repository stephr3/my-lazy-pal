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
        @total_binges = total_binge_hours(@user.binges)
        flash[:notice] = "You have successfully logged your binge session!"
        respond_to do |format|
          format.html { redirect_to :back }
          format.js
        end
      else
        flash[:alert] = "Your session has not been saved."
        render :new
      end
    else
      flash[:alert] = "The entered show is not in the database. Please add the show."
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
   def binge_params
     params.require(:binge).permit(:start, :finish)
   end
end
