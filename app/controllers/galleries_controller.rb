class GalleriesController < ApplicationController
	
	def index
		@galleries = Gallery.all
	end

	def show
		@gallery = Gallery.find(params[:id])
	end

	def new
		@gallery = Gallery.new
	end

	def create 
  	@gallery = Gallery.new(galery_params)
  	if @gallery.save
    	redirect_to @gallery
  	else
    	render 'new'
  	end
  end

  def edit
  	@gallery = Gallery.find(params[:id])
  end
end
