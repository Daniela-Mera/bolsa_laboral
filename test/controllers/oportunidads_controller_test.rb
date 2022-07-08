require "test_helper"

class OportunidadsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @oportunidad = oportunidads(:one)
  end

  test "should get index" do
    get oportunidads_url
    assert_response :success
  end

  test "should get new" do
    get new_oportunidad_url
    assert_response :success
  end

  test "should create oportunidad" do
    assert_difference("Oportunidad.count") do
      post oportunidads_url, params: { oportunidad: {  } }
    end

    assert_redirected_to oportunidad_url(Oportunidad.last)
  end

  test "should show oportunidad" do
    get oportunidad_url(@oportunidad)
    assert_response :success
  end

  test "should get edit" do
    get edit_oportunidad_url(@oportunidad)
    assert_response :success
  end

  test "should update oportunidad" do
    patch oportunidad_url(@oportunidad), params: { oportunidad: {  } }
    assert_redirected_to oportunidad_url(@oportunidad)
  end

  test "should destroy oportunidad" do
    assert_difference("Oportunidad.count", -1) do
      delete oportunidad_url(@oportunidad)
    end

    assert_redirected_to oportunidads_url
  end
end
