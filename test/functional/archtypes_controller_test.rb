require 'test_helper'

class ArchtypesControllerTest < ActionController::TestCase
  setup do
    @archtype = archtypes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:archtypes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create archtype" do
    assert_difference('Archtype.count') do
      post :create, :archtype => @archtype.attributes
    end

    assert_redirected_to archtype_path(assigns(:archtype))
  end

  test "should show archtype" do
    get :show, :id => @archtype.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @archtype.to_param
    assert_response :success
  end

  test "should update archtype" do
    put :update, :id => @archtype.to_param, :archtype => @archtype.attributes
    assert_redirected_to archtype_path(assigns(:archtype))
  end

  test "should destroy archtype" do
    assert_difference('Archtype.count', -1) do
      delete :destroy, :id => @archtype.to_param
    end

    assert_redirected_to archtypes_path
  end
end
