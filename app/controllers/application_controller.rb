class ApplicationController < ActionController::Base
  include Clearance::Authentication
  include Clearance::Authorization
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :null_session

  protected

  # curl -H "Authorization: APIKEY" /api/events.json
  def authenticate_with_api_key
    api_key = request.headers["Authorization"] || params[:api_key]
    sign_in User.find_by_api_key(api_key)
  end

  def verify_authenticated_user
    if current_user.nil?
      render text: "Please, sign up!", :status => 401
    end
  end
end
