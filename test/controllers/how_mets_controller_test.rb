require 'test_helper'

class HowMetsControllerTest < ActionController::TestCase
  setup do
    @how_met = how_mets(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:how_mets)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create how_met" do
    assert_difference('HowMet.count') do
      post :create, how_met: { name: @how_met.name }
    end

    assert_redirected_to how_met_path(assigns(:how_met))
  end

  test "should show how_met" do
    get :show, id: @how_met
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @how_met
    assert_response :success
  end

  test "should update how_met" do
    patch :update, id: @how_met, how_met: { name: @how_met.name }
    assert_redirected_to how_met_path(assigns(:how_met))
  end

  test "should destroy how_met" do
    assert_difference('HowMet.count', -1) do
      delete :destroy, id: @how_met
    end

    assert_redirected_to how_mets_path
  end
end
