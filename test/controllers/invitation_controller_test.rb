require 'test_helper'

class InvitationControllerTest < ActionDispatch::IntegrationTest
  test "should get hello" do
    get invitation_hello_url
    assert_response :success
  end

end
