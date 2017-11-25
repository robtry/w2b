require 'test_helper'

class IncioControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get incio_index_url
    assert_response :success
  end

end
