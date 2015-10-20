require 'test_helper'

class Places::ArenasControllerTest < ActionController::TestCase
  setup do
    @places_arena = places_arenas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:places_arenas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create places_arena" do
    assert_difference('Places::Arena.count') do
      post :create, places_arena: {  }
    end

    assert_redirected_to places_arena_path(assigns(:places_arena))
  end

  test "should show places_arena" do
    get :show, id: @places_arena
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @places_arena
    assert_response :success
  end

  test "should update places_arena" do
    patch :update, id: @places_arena, places_arena: {  }
    assert_redirected_to places_arena_path(assigns(:places_arena))
  end

  test "should destroy places_arena" do
    assert_difference('Places::Arena.count', -1) do
      delete :destroy, id: @places_arena
    end

    assert_redirected_to places_arenas_path
  end
end
