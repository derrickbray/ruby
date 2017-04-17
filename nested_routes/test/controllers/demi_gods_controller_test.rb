require 'test_helper'

class DemiGodsControllerTest < ActionController::TestCase
  setup do
    @universe = universes(:one)
    @demi_god = demi_gods(:one)
  end

  test "should get index" do
    get :index, params: { universe_id: @universe }
    assert_response :success
  end

  test "should get new" do
    get :new, params: { universe_id: @universe }
    assert_response :success
  end

  test "should create demi_god" do
    assert_difference('DemiGod.count') do
      post :create, params: { universe_id: @universe, demi_god: @demi_god.attributes }
    end

    assert_redirected_to universe_demi_god_path(@universe, DemiGod.last)
  end

  test "should show demi_god" do
    get :show, params: { universe_id: @universe, id: @demi_god }
    assert_response :success
  end

  test "should get edit" do
    get :edit, params: { universe_id: @universe, id: @demi_god }
    assert_response :success
  end

  test "should update demi_god" do
    put :update, params: { universe_id: @universe, id: @demi_god, demi_god: @demi_god.attributes }
    assert_redirected_to universe_demi_god_path(@universe, DemiGod.last)
  end

  test "should destroy demi_god" do
    assert_difference('DemiGod.count', -1) do
      delete :destroy, params: { universe_id: @universe, id: @demi_god }
    end

    assert_redirected_to universe_demi_gods_path(@universe)
  end
end
