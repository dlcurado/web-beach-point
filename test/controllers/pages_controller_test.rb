require 'test_helper'

class PagesControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get pages_home_url
    assert_response :success
  end

  test "should get sobre" do
    get pages_sobre_url
    assert_response :success
  end

  test "should get login" do
    get pages_login_url
    assert_response :success
  end

  test "should get perfil" do
    get pages_perfil_url
    assert_response :success
  end

  test "should get ajuda" do
    get pages_ajuda_url
    assert_response :success
  end

end
