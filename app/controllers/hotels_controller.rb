class HotelsController < ApplicationController
  def index
    @hotels = Hotel.all
  end

  def show
    @hotel = Hotel.find(params[:id])
  end

  def new
    @hotel = Hotel.new
  end

  def create
    @hotel = Hotel.new
    @hotel.name = params[:name]
    @hotel.address = params[:address]
    @hotel.city = params[:city]
    @hotel.country = params[:country]

    if @hotel.save
      redirect_to "/hotels", :notice => "Hotel created successfully."
    else
      render 'new'
    end
  end

  def edit
    @hotel = Hotel.find(params[:id])
  end

  def update

    @hotel = Hotel.find(params[:id])

    @hotel.name = params[:name]
    @hotel.address = params[:address]
    @hotel.city = params[:city]
    @hotel.country = params[:country]

    if @hotel.save
      redirect_to "/hotels", :notice => "Hotel updated successfully."
    else
      render 'edit'
    end
  end

  def destroy

    @hotel = Hotel.find(params[:id])

    @hotel.destroy

    redirect_to "/hotels", :notice => "Hotel deleted."
  end
end
