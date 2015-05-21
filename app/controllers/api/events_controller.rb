class Api::EventsController < ApplicationController
  before_action :authenticate_with_api_key
  before_action :verify_authenticated_user

  def index
    hash = { status: "success" }
    render json: hash
  end
end
