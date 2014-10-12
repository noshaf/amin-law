require 'test_helper'

class SubscriptionsControllerTest < ActionController::TestCase
  test "should get send_case" do
    get :send_case
    assert_response :success
  end

end
