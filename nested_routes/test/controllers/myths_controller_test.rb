require 'test_helper'

class MythsControllerTest < ActionController::TestCase
  setup do
    @universe = universes(:one)
    @myth = myths(:one)
  end

  test "should get index" do
    get :index, params: { universe_id: @universe }
    assert_response :success
  end

  test "should get new" do
    get :new, params: { universe_id: @universe }
    assert_response :success
  end

  test "should create myth" do
    assert_difference('Myth.count') do
      post :create, params: { universe_id: @universe, myth: @myth.attributes }
    end

    assert_redirected_to universe_myth_path(@universe, Myth.last)
  end

  test "should show myth" do
    get :show, params: { universe_id: @universe, id: @myth }
    assert_response :success
  end

  test "should get edit" do
    get :edit, params: { universe_id: @universe, id: @myth }
    assert_response :success
  end

  test "should update myth" do
    put :update, params: { universe_id: @universe, id: @myth, myth: @myth.attributes }
    assert_redirected_to universe_myth_path(@universe, Myth.last)
  end

  test "should destroy myth" do
    assert_difference('Myth.count', -1) do
      delete :destroy, params: { universe_id: @universe, id: @myth }
    end

    assert_redirected_to universe_myths_path(@universe)
  end
end
