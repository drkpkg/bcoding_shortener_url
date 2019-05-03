require 'test_helper'

class UrlShortControllerTest < ActionDispatch::IntegrationTest
  test "should get generate_short_url" do
    get url_short_generate_short_url_url
    assert_response :success
  end

end
