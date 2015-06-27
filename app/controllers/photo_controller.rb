class PhotosController < ApplicationController
  before_action :authenticate_with_token!, only: [:create, :show_user_photo, :show_all_user_photos]

  def create
    @photo = current_user.photos.new( image_url: params[:image_url])
    if @photo.save
      render 'new.json.jbuilder', status: :created
    else
    render json: { errors: @photo.errors.full_messages },
        status: :unprocessable_entity
    end
  end

  def show_user_photo
    @photo = current_user.photos.find(params[:id])
    render 'show.json.jbuilder', status: :ok
  end

  def show_all_user_photos
    @photos = current_user.photos.order(created_at: :desc).page(params[:page])
    if @photos.any?
      render 'user_photos.json.jbuilder', status: :ok
    else
      render json: { message: "This user does not have any photos." },
        status: :not_found
    end
  end

  def all
    @photos = Photo.order(created_at: :desc).page(params[:page])
    if @photos.any?
      render 'all.json.jbuilder', status: :ok
    else
      render json: { message: "There are no photos." },
        status: :not_found
    end
  end

end