class SongsController < ApplicationController
  include Trailblazer::Operation::Controller

  respond_to :json

  def create
    respond Song::Create
  end

end
