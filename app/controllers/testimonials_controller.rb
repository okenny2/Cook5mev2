class TestimonialsController < ApplicationController
  before_action :authenticate_user!

  def index
    @testimonials = Testimonial.all
  end

  def show
    @testimonial = Testimonial.find(params[:id])
  end

  def new
    @testimonial = Testimonial.new
  end

  def create
    @testimonial = Testimonial.new
    @testimonial.user_id = current_user.id
    @testimonial.cust_story = params[:cust_story]
    @testimonial.cook_id = params[:cook_id]
    @testimonial.hotel_id = params[:hotel_id]
    @testimonial.cook_story = params[:cook_story]

    if @testimonial.save
      redirect_to "/testimonials", :notice => "Testimonial created successfully."
    else
      render 'new'
    end
  end

  def edit
    @testimonial = Testimonial.find(params[:id])

  end

  def update
    @testimonial = Testimonial.find(params[:id])

    @testimonial.cust_story = params[:cust_story]
    @testimonial.cook_id = params[:cook_id]
    @testimonial.hotel_id = params[:hotel_id]
    @testimonial.cook_story = params[:cook_story]

    if @testimonial.save
      redirect_to "/testimonials", :notice => "Testimonial updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @testimonial = Testimonial.find(params[:id])

    @testimonial.destroy

    redirect_to "/testimonials", :notice => "Testimonial deleted."
  end
end
