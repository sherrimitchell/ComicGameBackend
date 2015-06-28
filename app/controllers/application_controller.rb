class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :null_session
  rescue_from ActiveRecord::RecordNotFound, :with => :record_not_found

  def current_user
    token = request.headers['Access-Token']
    token && User.find_by(access_token: token)
  end

  def record_not_found
    render json: {message: "No such record"} # Assuming you have a template named 'record_not_found'
  end

  def authenticate_with_token!
    unless current_user
      render json: { message: "Access Token not found." },
        status: :unauthenticated
    end
  end
end
