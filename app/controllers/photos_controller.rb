class PhotosController < ApplicationController

  def index
    @photos = Photo.all
    @uploader = Photo.new.image
    @uploader.success_action_redirect = new_photo_url
  end

  def new
    @photo = Photo.new(key: params[:key])
  end

  def create
    @photo = Photo.new(params[:photo])
    if @photo.save
      redirect_to photos_url
    else
      render :new
    end
  end

end
