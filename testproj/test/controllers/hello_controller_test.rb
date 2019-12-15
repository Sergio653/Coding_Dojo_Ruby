require 'test_helper'

class HelloControllerTest < ActionDispatch::IntegrationTest
  test "should get say" do
    get hello_say_url
    assert_response :success
  end

  test "should get joe" do
    get hello_joe_url
    assert_response :success
  end

  test "should get micheal" do
    get hello_micheal_url
    assert_response :success
  end

end
