require 'test_helper'

class MessagesControllerTest < ActionDispatch::IntegrationTest
  test "should get indexx" do
    get messages_indexx_url
    assert_response :success
  end

end
