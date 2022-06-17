require "test_helper"

class VegsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get vegs_index_url
    assert_response :success
  end
end
