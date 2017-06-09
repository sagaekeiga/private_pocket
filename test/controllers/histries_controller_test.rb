require 'test_helper'

class HistriesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get histries_index_url
    assert_response :success
  end

end
