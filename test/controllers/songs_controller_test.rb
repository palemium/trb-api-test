require 'test_helper'

class SongsControllerTest < ActionController::TestCase

  test '#create' do

    assert_difference 'Song.count' do
      post :create, {title: 'Hello World'}.to_json, format: :json
    end
    assert_response 201
    assert_equal %{{"title":"Hello World"}}, response.body

  end

end
