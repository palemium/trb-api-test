require 'test_helper'

class SongsControllerTest < ActionController::TestCase

  test '#create' do

    assert_difference 'Song.count' do
      post :create, {title: 'Hello World'}.to_json, format: :json
    end
    assert_response 201
    assert_equal %{{"title":"Hello World"}}, response.body

  end

  test '#create invalid' do

    assert_difference 'Song.count', 0 do
      post :create, {title: ''}.to_json, format: :json
    end
    assert_response 422
    assert_equal %{{"errors":[1]}}, response.body

  end

end
