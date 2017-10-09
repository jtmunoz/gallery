class PhotosController < ApplicationController
	
	def index
		@photos = Photo.all
	end

	def show
		@photo = Photo.find(params[:id])
	end

	def new
		@photo = Photo.new
	end

	def create 
  	@gallery = Photo.new(photo_params)
  	if @photo.save
    	redirect_to @photo
  	else
    	render 'new'
  	end
  end
end
