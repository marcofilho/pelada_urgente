require 'test_helper'

class ArenasControllerTest < ActionController::TestCase
  setup do
    @arena = arenas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:arenas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create arena" do
    assert_difference('Arena.count') do
      post :create, arena: { kind: @arena.kind, length: @arena.length, name: @arena.name, place_id: @arena.place_id, width: @arena.width }
    end

    assert_redirected_to arena_path(assigns(:arena))
  end

  test "should show arena" do
    get :show, id: @arena
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @arena
    assert_response :success
  end

  test "should update arena" do
    patch :update, id: @arena, arena: { kind: @arena.kind, length: @arena.length, name: @arena.name, place_id: @arena.place_id, width: @arena.width }
    assert_redirected_to arena_path(assigns(:arena))
  end

  test "should destroy arena" do
    assert_difference('Arena.count', -1) do
      delete :destroy, id: @arena
    end

    assert_redirected_to arenas_path
  end
end
