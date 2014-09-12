require 'test_helper'

class QuestionbankControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

end
