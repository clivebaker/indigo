require 'test_helper'

class IndexControllerTest < ActionDispatch::IntegrationTest
  test "should get device" do
    get index_device_url
    assert_response :success
  end

end
