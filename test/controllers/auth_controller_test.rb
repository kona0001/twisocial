require 'test_helper'

class AuthControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get auth_index_url
    assert_response :success
  end

  test "should get show" do
    get auth_show_url
    assert_response :success
  end

end
