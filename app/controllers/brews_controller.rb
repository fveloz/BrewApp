class BrewsController < ApplicationController
  def index
  	@brews = Brew.all
  end

  def new
  	@brew = Brew.new
  	@brew.hops.build
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
  	params.require('brew').permit(:name, :story, :walkthrough, hops_attributes: [:name, :id, :brew_id])
  end



end
