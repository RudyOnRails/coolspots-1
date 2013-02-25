class SpotsController < ApplicationController

  before_filter :require_login_from_http_basic, :except => [:show]
  def index
    @spots = current_user.spots

    respond_to do |format|
      format.html # index.html.erb
      format.json {
        spots = @spots.collect {|spot| {caption: spot.name, id: spot.id, preview_url: spot.photo_url, url: "/spots/#{spot.id}"} }
        render json: spots
      }
    end
  end

  def show    
    @spot = Spot.find(params[:id])
  end

  def new
    @spot = Spot.new
  end

  def edit
    @spot = Spot.find(params[:id])
  end

  def create
    @spot = Spot.new(params[:spot])
    if @spot.save
      redirect_to @spot, notice: 'Spot was successfully created.'
    else
      render action: "new"
    end
  end

  def update
    @spot = Spot.find(params[:id])

    if @spot.update_attributes(params[:spot])
      redirect_to @spot, notice: 'Spot was successfully updated.'
    else
      render action: "edit"
    end
  end

  def destroy
    @spot = Spot.find(params[:id])
    @spot.destroy
    redirect_to spots_url 
  end
  
end
