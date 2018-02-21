require 'test_helper'

class CampingsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get campings_index_url
    assert_response :success
  end

end
