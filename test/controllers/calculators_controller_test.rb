require 'test_helper'

class CalculatorsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get calculators_new_url
    assert_response :success
  end

end
