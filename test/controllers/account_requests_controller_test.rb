require "test_helper"

class AccountRequestsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get account_requests_new_url
    assert_response :success
  end
end
