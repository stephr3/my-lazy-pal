class ShowsController < ApplicationController

  def new
    @show = Show.new
  end

  def create
    @show = Show.new(show_params)
    if @show.save
      flash[:notice] = "Show successfully added!"
      respond_to do |format|
        format.html { redirect_to :back }
        format.js
      end
    else
      render :new
    end
  end

  def autocomplete
    @show_search = Show.order(:name).where("name ILIKE ?", "%#{ params[:term] }%")
    respond_to do |format|
      format.html
      format.json {
        render json: @show_search.map(&:name).to_json
      }
    end
  end


private
  def show_params
    params.require(:show).permit(:name, :description, :media_type, :category)
  end
end
