require 'test_helper'

class AdminControllerTest < ActionDispatch::IntegrationTest
  test "should get control_panel" do
    get admin_control_panel_url
    assert_response :success
  end

end
