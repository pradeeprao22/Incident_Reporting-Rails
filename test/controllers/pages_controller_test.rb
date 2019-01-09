require 'test_helper'

class PagesControllerTest < ActionDispatch::IntegrationTest
  test "should get report" do
    get pages_report_url
    assert_response :success
  end

end
