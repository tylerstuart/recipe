require 'test_helper'

class RecipeAllsControllerTest < ActionController::TestCase
  setup do
    @recipe_all = recipe_alls(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:recipe_alls)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create recipe_all" do
    assert_difference('RecipeAll.count') do
      post :create, recipe_all: @recipe_all.attributes
    end

    assert_redirected_to recipe_all_path(assigns(:recipe_all))
  end

  test "should show recipe_all" do
    get :show, id: @recipe_all
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @recipe_all
    assert_response :success
  end

  test "should update recipe_all" do
    put :update, id: @recipe_all, recipe_all: @recipe_all.attributes
    assert_redirected_to recipe_all_path(assigns(:recipe_all))
  end

  test "should destroy recipe_all" do
    assert_difference('RecipeAll.count', -1) do
      delete :destroy, id: @recipe_all
    end

    assert_redirected_to recipe_alls_path
  end
end
