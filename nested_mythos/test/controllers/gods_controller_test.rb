require 'test_helper'

class GodsControllerTest < ActionController::TestCase
  setup do
    @mythos = mythos(:one)
    @god = gods(:one)
  end

  test "should get index" do
    get :index, params: { mythos_id: @mythos }
    assert_response :success
  end

  test "should get new" do
    get :new, params: { mythos_id: @mythos }
    assert_response :success
  end

  test "should create god" do
    assert_difference('God.count') do
      post :create, params: { mythos_id: @mythos, god: @god.attributes }
    end

    assert_redirected_to mythos_god_path(@mythos, God.last)
  end

  test "should show god" do
    get :show, params: { mythos_id: @mythos, id: @god }
    assert_response :success
  end

  test "should get edit" do
    get :edit, params: { mythos_id: @mythos, id: @god }
    assert_response :success
  end

  test "should update god" do
    put :update, params: { mythos_id: @mythos, id: @god, god: @god.attributes }
    assert_redirected_to mythos_god_path(@mythos, God.last)
  end

  test "should destroy god" do
    assert_difference('God.count', -1) do
      delete :destroy, params: { mythos_id: @mythos, id: @god }
    end

    assert_redirected_to mythos_gods_path(@mythos)
  end
end
