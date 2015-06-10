class CooksController < ApplicationController
  def index
    @cooks = Cook.all
  end

  def show
    @cook = Cook.find(params[:id])
  end

  def new
    @cook = Cook.new
  end

  def create
    @cook = Cook.new
    @cook.name = params[:name]
    @cook.language = params[:language]
    @cook.passion = params[:passion]
    @cook.diet_id = params[:diet_id]

    if @cook.save
      redirect_to "/cooks", :notice => "Cook created successfully."
    else
      render 'new'
    end
  end

  def edit
    @cook = Cook.find(params[:id])
  end

  def update
    @cook = Cook.find(params[:id])

    @cook.name = params[:name]
    @cook.language = params[:language]
    @cook.passion = params[:passion]
    @cook.diet_id = params[:diet_id]

    if @cook.save
      redirect_to "/cooks", :notice => "Cook updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @cook = Cook.find(params[:id])

    @cook.destroy

    redirect_to "/cooks", :notice => "Cook deleted."
  end
end
