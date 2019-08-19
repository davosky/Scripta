require 'test_helper'

class ImmigrationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @immigration = immigrations(:one)
  end

  test "should get index" do
    get immigrations_url
    assert_response :success
  end

  test "should get new" do
    get new_immigration_url
    assert_response :success
  end

  test "should create immigration" do
    assert_difference('Immigration.count') do
      post immigrations_url, params: { immigration: { content: @immigration.content, creation_date: @immigration.creation_date, name: @immigration.name, note: @immigration.note, position: @immigration.position, revision_date: @immigration.revision_date, title: @immigration.title } }
    end

    assert_redirected_to immigration_url(Immigration.last)
  end

  test "should show immigration" do
    get immigration_url(@immigration)
    assert_response :success
  end

  test "should get edit" do
    get edit_immigration_url(@immigration)
    assert_response :success
  end

  test "should update immigration" do
    patch immigration_url(@immigration), params: { immigration: { content: @immigration.content, creation_date: @immigration.creation_date, name: @immigration.name, note: @immigration.note, position: @immigration.position, revision_date: @immigration.revision_date, title: @immigration.title } }
    assert_redirected_to immigration_url(@immigration)
  end

  test "should destroy immigration" do
    assert_difference('Immigration.count', -1) do
      delete immigration_url(@immigration)
    end

    assert_redirected_to immigrations_url
  end
end
