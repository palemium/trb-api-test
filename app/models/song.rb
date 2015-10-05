class Song < ActiveRecord::Base

  class Create < Trailblazer::Operation
    include Model
    include Representer
    include Responder

    model Song, :create

    contract do
      property :title
      validates :title, presence: true
    end

    representer do
      include Roar::JSON
    end

    def process(params)
      validate(params[:song]) do # params[:song] is a JSON document.
        contract.save
      end
    end

  end

end
