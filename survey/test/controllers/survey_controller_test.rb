require 'test_helper'

class SurveyControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get survey_show_url
    assert_response :success
  end

  test "should get create" do
    get survey_create_url
    assert_response :success
  end

end
