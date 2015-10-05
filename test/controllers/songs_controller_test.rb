require 'test_helper'

class SongsControllerTest < ActionController::TestCase

  test '#create' do

    post :create,  {title: 'Hello World'}.to_json, format: :json
    assert_response 201

  end

end
