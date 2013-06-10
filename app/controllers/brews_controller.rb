class BrewsController < ApplicationController
  def index
  	@brews = Brew.all
  end

  def new
  	@brew = Brew.new
  	@brew.hops.build
    @brew.fermentables.build
    @brew.yeasts.build
    @brew.extras.build
  end

  def show
  	@brew = Brew.find params[:id]
  end

  def create
  	@brew = Brew.new(brew_params)
   	if @brew.save
   		redirect_to @brew
   	else
   		'new'
   	end
 
  end





private 
  def brew_params
  	params.require('brew').permit(:name, :story, :walkthrough, hops_attributes: [:name, :id, :brew_id], 
      extras_attributes: [:name, :id, :brew_id], fermentables_attributes: [:name, :id, :brew_id], 
      yeasts_attributes: [:name, :id, :brew_id])
  end



end
