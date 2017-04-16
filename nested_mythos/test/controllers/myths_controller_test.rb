require 'test_helper'

class MythsControllerTest < ActionController::TestCase
  setup do
    @mythos = mythos(:one)
    @myth = myths(:one)
  end

  test "should get index" do
    get :index, params: { mythos_id: @mythos }
    assert_response :success
  end

  test "should get new" do
    get :new, params: { mythos_id: @mythos }
    assert_response :success
  end

  test "should create myth" do
    assert_difference('Myth.count') do
      post :create, params: { mythos_id: @mythos, myth: @myth.attributes }
    end

    assert_redirected_to mythos_myth_path(@mythos, Myth.last)
  end

  test "should show myth" do
    get :show, params: { mythos_id: @mythos, id: @myth }
    assert_response :success
  end

  test "should get edit" do
    get :edit, params: { mythos_id: @mythos, id: @myth }
    assert_response :success
  end

  test "should update myth" do
    put :update, params: { mythos_id: @mythos, id: @myth, myth: @myth.attributes }
    assert_redirected_to mythos_myth_path(@mythos, Myth.last)
  end

  test "should destroy myth" do
    assert_difference('Myth.count', -1) do
      delete :destroy, params: { mythos_id: @mythos, id: @myth }
    end

    assert_redirected_to mythos_myths_path(@mythos)
  end
end
