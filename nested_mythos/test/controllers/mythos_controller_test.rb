require 'test_helper'

class MythosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @mytho = mythos(:one)
  end

  test "should get index" do
    get mythos_url
    assert_response :success
  end

  test "should get new" do
    get new_mytho_url
    assert_response :success
  end

  test "should create mytho" do
    assert_difference('Mytho.count') do
      post mythos_url, params: { mytho: { discription: @mytho.discription, title: @mytho.title } }
    end

    assert_redirected_to mytho_url(Mytho.last)
  end

  test "should show mytho" do
    get mytho_url(@mytho)
    assert_response :success
  end

  test "should get edit" do
    get edit_mytho_url(@mytho)
    assert_response :success
  end

  test "should update mytho" do
    patch mytho_url(@mytho), params: { mytho: { discription: @mytho.discription, title: @mytho.title } }
    assert_redirected_to mytho_url(@mytho)
  end

  test "should destroy mytho" do
    assert_difference('Mytho.count', -1) do
      delete mytho_url(@mytho)
    end

    assert_redirected_to mythos_url
  end
end
