require 'test_helper'

class WordproblemsControllerTest < ActionController::TestCase
  test "should get calculate" do
    get :calculate
    assert_response :success
  end

  test "should get answer" do
    post :answer, :question => "What is 23 plus 24?"
    assert_response :success
  end

end
