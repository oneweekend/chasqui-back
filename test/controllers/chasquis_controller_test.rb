require 'test_helper'

class ChasquisControllerTest < ActionDispatch::IntegrationTest
  setup do
    @chasqui = chasquis(:one)
  end

  test "should get index" do
    get chasquis_url, as: :json
    assert_response :success
  end

  test "should create chasqui" do
    assert_difference('Chasqui.count') do
      post chasquis_url, params: { chasqui: { email: @chasqui.email, name: @chasqui.name, phone: @chasqui.phone } }, as: :json
    end

    assert_response 201
  end

  test "should show chasqui" do
    get chasqui_url(@chasqui), as: :json
    assert_response :success
  end

  test "should update chasqui" do
    patch chasqui_url(@chasqui), params: { chasqui: { email: @chasqui.email, name: @chasqui.name, phone: @chasqui.phone } }, as: :json
    assert_response 200
  end

  test "should destroy chasqui" do
    assert_difference('Chasqui.count', -1) do
      delete chasqui_url(@chasqui), as: :json
    end

    assert_response 204
  end
end
