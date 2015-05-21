class Api::EventsController < ApplicationController
  def index
    hash = { status: "success" }
    render json: hash
  end
end
