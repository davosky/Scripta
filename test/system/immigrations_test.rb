require "application_system_test_case"

class ImmigrationsTest < ApplicationSystemTestCase
  setup do
    @immigration = immigrations(:one)
  end

  test "visiting the index" do
    visit immigrations_url
    assert_selector "h1", text: "Immigrations"
  end

  test "creating a Immigration" do
    visit immigrations_url
    click_on "New Immigration"

    fill_in "Content", with: @immigration.content
    fill_in "Creation date", with: @immigration.creation_date
    fill_in "Name", with: @immigration.name
    fill_in "Note", with: @immigration.note
    fill_in "Position", with: @immigration.position
    fill_in "Revision date", with: @immigration.revision_date
    fill_in "Title", with: @immigration.title
    click_on "Create Immigration"

    assert_text "Immigration was successfully created"
    click_on "Back"
  end

  test "updating a Immigration" do
    visit immigrations_url
    click_on "Edit", match: :first

    fill_in "Content", with: @immigration.content
    fill_in "Creation date", with: @immigration.creation_date
    fill_in "Name", with: @immigration.name
    fill_in "Note", with: @immigration.note
    fill_in "Position", with: @immigration.position
    fill_in "Revision date", with: @immigration.revision_date
    fill_in "Title", with: @immigration.title
    click_on "Update Immigration"

    assert_text "Immigration was successfully updated"
    click_on "Back"
  end

  test "destroying a Immigration" do
    visit immigrations_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Immigration was successfully destroyed"
  end
end
