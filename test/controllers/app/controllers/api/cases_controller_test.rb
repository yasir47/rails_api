require 'test_helper'

class App::Controllers::Api::CasesControllerTest < ActionController::TestCase
  setup do
    @app_controllers_api_case = app_controllers_api_cases(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:app_controllers_api_cases)
  end

  test "should create app_controllers_api_case" do
    assert_difference('App::Controllers::Api::Case.count') do
      post :create, app_controllers_api_case: {  }
    end

    assert_response 201
  end

  test "should show app_controllers_api_case" do
    get :show, id: @app_controllers_api_case
    assert_response :success
  end

  test "should update app_controllers_api_case" do
    put :update, id: @app_controllers_api_case, app_controllers_api_case: {  }
    assert_response 204
  end

  test "should destroy app_controllers_api_case" do
    assert_difference('App::Controllers::Api::Case.count', -1) do
      delete :destroy, id: @app_controllers_api_case
    end

    assert_response 204
  end
end
