require 'test_helper'

class CabbagesControllerTest < ActionController::TestCase
  setup do
    @cabbage = cabbages(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cabbages)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cabbage" do
    assert_difference('Cabbage.count') do
      post :create, cabbage: { content: @cabbage.content, game_id: @cabbage.game_id, name: @cabbage.name }
    end

    assert_redirected_to cabbage_path(assigns(:cabbage))
  end

  test "should show cabbage" do
    get :show, id: @cabbage
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cabbage
    assert_response :success
  end

  test "should update cabbage" do
    patch :update, id: @cabbage, cabbage: { content: @cabbage.content, game_id: @cabbage.game_id, name: @cabbage.name }
    assert_redirected_to cabbage_path(assigns(:cabbage))
  end

  test "should destroy cabbage" do
    assert_difference('Cabbage.count', -1) do
      delete :destroy, id: @cabbage
    end

    assert_redirected_to cabbages_path
  end
end
