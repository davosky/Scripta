require 'test_helper'

class AssistancesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @assistance = assistances(:one)
  end

  test "should get index" do
    get assistances_url
    assert_response :success
  end

  test "should get new" do
    get new_assistance_url
    assert_response :success
  end

  test "should create assistance" do
    assert_difference('Assistance.count') do
      post assistances_url, params: { assistance: { content: @assistance.content, creation_date: @assistance.creation_date, name: @assistance.name, note: @assistance.note, position: @assistance.position, revision_date: @assistance.revision_date, title: @assistance.title } }
    end

    assert_redirected_to assistance_url(Assistance.last)
  end

  test "should show assistance" do
    get assistance_url(@assistance)
    assert_response :success
  end

  test "should get edit" do
    get edit_assistance_url(@assistance)
    assert_response :success
  end

  test "should update assistance" do
    patch assistance_url(@assistance), params: { assistance: { content: @assistance.content, creation_date: @assistance.creation_date, name: @assistance.name, note: @assistance.note, position: @assistance.position, revision_date: @assistance.revision_date, title: @assistance.title } }
    assert_redirected_to assistance_url(@assistance)
  end

  test "should destroy assistance" do
    assert_difference('Assistance.count', -1) do
      delete assistance_url(@assistance)
    end

    assert_redirected_to assistances_url
  end
end
