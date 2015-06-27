class ComicsController < ApplicationController
  before_action :authenticate_with_token!, only: [:create, :show_user_comic, :show_all_user_comics]

  def create
    @comic = current_user.comics.new( comic_url: params[:comic_url],
                                      title: params[:title])
    if @comic.save
      render 'new.json.jbuilder', status: :created
    else
    render json: { errors: @comic.errors.full_messages },
        status: :unprocessable_entity
    end
  end

  def show_user_comic
    @comic = current_user.comics.find(params[:title])
    render 'show.json.jbuilder', status: :ok
  end

  def show_all_user_comics
    @comics = current_user.comics.order(created_at: :desc).page(params[:page])
    if @posts.any?
      render 'user_comics.json.jbuilder', status: :ok
    else
      render json: { message: "This user does not have any comics." },
        status: :not_found
    end
  end

  def all
    @comics = Comic.order(created_at: :desc).page(params[:page])
    if @comics.any?
      render 'all.json.jbuilder', status: :ok
    else
      render json: { message: "There are no comics." },
        status: :not_found
    end
  end

end