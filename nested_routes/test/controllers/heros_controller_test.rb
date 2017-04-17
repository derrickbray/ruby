require 'test_helper'

class HerosControllerTest < ActionController::TestCase
  setup do
    @universe = universes(:one)
    @hero = heros(:one)
  end

  test "should get index" do
    get :index, params: { universe_id: @universe }
    assert_response :success
  end

  test "should get new" do
    get :new, params: { universe_id: @universe }
    assert_response :success
  end

  test "should create hero" do
    assert_difference('Hero.count') do
      post :create, params: { universe_id: @universe, hero: @hero.attributes }
    end

    assert_redirected_to universe_hero_path(@universe, Hero.last)
  end

  test "should show hero" do
    get :show, params: { universe_id: @universe, id: @hero }
    assert_response :success
  end

  test "should get edit" do
    get :edit, params: { universe_id: @universe, id: @hero }
    assert_response :success
  end

  test "should update hero" do
    put :update, params: { universe_id: @universe, id: @hero, hero: @hero.attributes }
    assert_redirected_to universe_hero_path(@universe, Hero.last)
  end

  test "should destroy hero" do
    assert_difference('Hero.count', -1) do
      delete :destroy, params: { universe_id: @universe, id: @hero }
    end

    assert_redirected_to universe_heros_path(@universe)
  end
end
