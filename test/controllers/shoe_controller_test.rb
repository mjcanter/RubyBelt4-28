require 'test_helper'

class ShoeControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get shoe_index_url
    assert_response :success
  end

end
