require 'test_helper'

class RoomsControllersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @rooms_controller = rooms_controllers(:one)
  end

  test "should get index" do
    get rooms_controllers_url, as: :json
    assert_response :success
  end

  test "should create rooms_controller" do
    assert_difference('RoomsController.count') do
      post rooms_controllers_url, params: { rooms_controller: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show rooms_controller" do
    get rooms_controller_url(@rooms_controller), as: :json
    assert_response :success
  end

  test "should update rooms_controller" do
    patch rooms_controller_url(@rooms_controller), params: { rooms_controller: {  } }, as: :json
    assert_response 200
  end

  test "should destroy rooms_controller" do
    assert_difference('RoomsController.count', -1) do
      delete rooms_controller_url(@rooms_controller), as: :json
    end

    assert_response 204
  end
end
