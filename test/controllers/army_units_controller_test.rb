require 'test_helper'

class ArmyUnitsControllerTest < ActionController::TestCase
  setup do
    @army_unit = army_units(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:army_units)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create army_unit" do
    assert_difference('ArmyUnit.count') do
      post :create, army_unit: { army_id: @army_unit.army_id, unit_id: @army_unit.unit_id }
    end

    assert_redirected_to army_unit_path(assigns(:army_unit))
  end

  test "should show army_unit" do
    get :show, id: @army_unit
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @army_unit
    assert_response :success
  end

  test "should update army_unit" do
    patch :update, id: @army_unit, army_unit: { army_id: @army_unit.army_id, unit_id: @army_unit.unit_id }
    assert_redirected_to army_unit_path(assigns(:army_unit))
  end

  test "should destroy army_unit" do
    assert_difference('ArmyUnit.count', -1) do
      delete :destroy, id: @army_unit
    end

    assert_redirected_to army_units_path
  end
end
