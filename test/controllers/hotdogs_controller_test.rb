require 'test_helper'

class HotdogsControllerTest < ActionController::TestCase
  setup do
    @hotdog = hotdogs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:hotdogs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create hotdog" do
    assert_difference('Hotdog.count') do
      post :create, hotdog: { description: @hotdog.description, name: @hotdog.name, price: @hotdog.price }
    end

    assert_redirected_to hotdog_path(assigns(:hotdog))
  end

  test "should show hotdog" do
    get :show, id: @hotdog
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @hotdog
    assert_response :success
  end

  test "should update hotdog" do
    patch :update, id: @hotdog, hotdog: { description: @hotdog.description, name: @hotdog.name, price: @hotdog.price }
    assert_redirected_to hotdog_path(assigns(:hotdog))
  end

  test "should destroy hotdog" do
    assert_difference('Hotdog.count', -1) do
      delete :destroy, id: @hotdog
    end

    assert_redirected_to hotdogs_path
  end
end
