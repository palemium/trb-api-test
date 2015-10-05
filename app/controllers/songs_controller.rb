class SongsController < ApplicationController
  include Roar::Rails::ControllerAdditions
  include Trailblazer::Operation::Controller

  respond_to :json

  def create
    respond Song::Create
  end

end
