require 'test_helper'

class WordproblemsControllerTest < ActionController::TestCase
  
  test "should get ask" do
    get :ask
    assert_response :success
  end

  test "should post to answer with sound option" do
  	post :answer, :question => "What is 23 plus 24?", :sound => "off"
  	assert_equal assigns(:sound_option), "off"
  end

  test "should get answer" do
    post :answer, :question => "What is 23 plus 24?"
    assert_response :success
    assert_not_nil assigns(:answer)
  end

  test "should give error with wrong question" do
  	post :answer, :question => "two plus 24?"
  	assert assigns(:question).errors.any?
  	assert_redirected_to root_url
  end

end
