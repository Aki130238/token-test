require 'test_helper'

class OnetimetokensControllerTest < ActionDispatch::IntegrationTest
  setup do
    @onetimetoken = onetimetokens(:one)
  end

  test "should get index" do
    get onetimetokens_url
    assert_response :success
  end

  test "should get new" do
    get new_onetimetoken_url
    assert_response :success
  end

  test "should create onetimetoken" do
    assert_difference('Onetimetoken.count') do
      post onetimetokens_url, params: { onetimetoken: { content: @onetimetoken.content, title: @onetimetoken.title } }
    end

    assert_redirected_to onetimetoken_url(Onetimetoken.last)
  end

  test "should show onetimetoken" do
    get onetimetoken_url(@onetimetoken)
    assert_response :success
  end

  test "should get edit" do
    get edit_onetimetoken_url(@onetimetoken)
    assert_response :success
  end

  test "should update onetimetoken" do
    patch onetimetoken_url(@onetimetoken), params: { onetimetoken: { content: @onetimetoken.content, title: @onetimetoken.title } }
    assert_redirected_to onetimetoken_url(@onetimetoken)
  end

  test "should destroy onetimetoken" do
    assert_difference('Onetimetoken.count', -1) do
      delete onetimetoken_url(@onetimetoken)
    end

    assert_redirected_to onetimetokens_url
  end
end
