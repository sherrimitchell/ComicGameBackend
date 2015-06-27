class UsersController < ApplicationController
  def index
    @users = User.all

    render json: { user: @users.as_json(only: [:id, :email, :access_token,
                                              :username]) },
      status: :created
  end

  def register
    passhash = Digest::SHA1.hexdigest(params[:password])
    @user = User.new(email: params[:email],
                     password: passhash,
                     username: params[:username])
    if @user.save
      # render json "register.json.jbuilder", status: :created
      render json: { user: @user.as_json(only: [:id, :email, :access_token,
                                                :username]) },
        status: :created
    else
      render json: { errors: @user.errors.full_messages },
        status: :unprocessable_entity
    end
  end

  def login
    passhash = Digest::SHA1.hexdigest(params[:password])
    @user = User.find_by(password: passhash,
                     username: params[:username])
    if @user

      render json: { user: @user.as_json(only: [:id, :email, :access_token,
                                                :username]) },
        status: :ok
    else
      render json: { message: "Invalid Login" },
        status: :unauthenticated
    end
  end

end
