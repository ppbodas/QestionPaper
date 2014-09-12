require 'test_helper'

class PaperItemsControllerTest < ActionController::TestCase
  setup do
    @paper_item = paper_items(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:paper_items)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create paper_item" do
    assert_difference('PaperItem.count') do
      post :create, paper_item: { paper_id: @paper_item.paper_id, question_id: @paper_item.question_id }
    end

    assert_redirected_to paper_item_path(assigns(:paper_item))
  end

  test "should show paper_item" do
    get :show, id: @paper_item
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @paper_item
    assert_response :success
  end

  test "should update paper_item" do
    patch :update, id: @paper_item, paper_item: { paper_id: @paper_item.paper_id, question_id: @paper_item.question_id }
    assert_redirected_to paper_item_path(assigns(:paper_item))
  end

  test "should destroy paper_item" do
    assert_difference('PaperItem.count', -1) do
      delete :destroy, id: @paper_item
    end

    assert_redirected_to paper_items_path
  end
end
