require "test_helper"

class ReceptionistControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get receptionist_index_url
    assert_response :success
  end
end
