require "test_helper"

class AppearancesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @appearance = appearances(:one)
  end

  test "should get index" do
    get appearances_url
    assert_response :success
  end

  test "should get new" do
    get new_appearance_url
    assert_response :success
  end

  test "should create appearance" do
    assert_difference("Appearance.count") do
      post appearances_url, params: { appearance: { name: @appearance.name } }
    end

    assert_redirected_to appearance_url(Appearance.last)
  end

  test "should show appearance" do
    get appearance_url(@appearance)
    assert_response :success
  end

  test "should get edit" do
    get edit_appearance_url(@appearance)
    assert_response :success
  end

  test "should update appearance" do
    patch appearance_url(@appearance), params: { appearance: { name: @appearance.name } }
    assert_redirected_to appearance_url(@appearance)
  end

  test "should destroy appearance" do
    assert_difference("Appearance.count", -1) do
      delete appearance_url(@appearance)
    end

    assert_redirected_to appearances_url
  end
end
