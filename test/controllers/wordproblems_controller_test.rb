require 'test_helper'

class WordproblemsControllerTest < ActionController::TestCase
  test "should get calculate" do
    get :calculate
    assert_response :success
  end

  test "should get answer" do
    get :answer
    assert_response :success
  end

end
