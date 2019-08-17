require "application_system_test_case"

class AssistancesTest < ApplicationSystemTestCase
  setup do
    @assistance = assistances(:one)
  end

  test "visiting the index" do
    visit assistances_url
    assert_selector "h1", text: "Assistances"
  end

  test "creating a Assistance" do
    visit assistances_url
    click_on "New Assistance"

    fill_in "Content", with: @assistance.content
    fill_in "Creation date", with: @assistance.creation_date
    fill_in "Name", with: @assistance.name
    fill_in "Note", with: @assistance.note
    fill_in "Position", with: @assistance.position
    fill_in "Revision date", with: @assistance.revision_date
    fill_in "Title", with: @assistance.title
    click_on "Create Assistance"

    assert_text "Assistance was successfully created"
    click_on "Back"
  end

  test "updating a Assistance" do
    visit assistances_url
    click_on "Edit", match: :first

    fill_in "Content", with: @assistance.content
    fill_in "Creation date", with: @assistance.creation_date
    fill_in "Name", with: @assistance.name
    fill_in "Note", with: @assistance.note
    fill_in "Position", with: @assistance.position
    fill_in "Revision date", with: @assistance.revision_date
    fill_in "Title", with: @assistance.title
    click_on "Update Assistance"

    assert_text "Assistance was successfully updated"
    click_on "Back"
  end

  test "destroying a Assistance" do
    visit assistances_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Assistance was successfully destroyed"
  end
end
