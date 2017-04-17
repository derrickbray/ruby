require 'test_helper'

class GodsControllerTest < ActionController::TestCase
  setup do
    @universe = universes(:one)
    @god = gods(:one)
  end

  test "should get index" do
    get :index, params: { universe_id: @universe }
    assert_response :success
  end

  test "should get new" do
    get :new, params: { universe_id: @universe }
    assert_response :success
  end

  test "should create god" do
    assert_difference('God.count') do
      post :create, params: { universe_id: @universe, god: @god.attributes }
    end

    assert_redirected_to universe_god_path(@universe, God.last)
  end

  test "should show god" do
    get :show, params: { universe_id: @universe, id: @god }
    assert_response :success
  end

  test "should get edit" do
    get :edit, params: { universe_id: @universe, id: @god }
    assert_response :success
  end

  test "should update god" do
    put :update, params: { universe_id: @universe, id: @god, god: @god.attributes }
    assert_redirected_to universe_god_path(@universe, God.last)
  end

  test "should destroy god" do
    assert_difference('God.count', -1) do
      delete :destroy, params: { universe_id: @universe, id: @god }
    end

    assert_redirected_to universe_gods_path(@universe)
  end
end
