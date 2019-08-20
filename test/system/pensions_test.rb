require "application_system_test_case"

class PensionsTest < ApplicationSystemTestCase
  setup do
    @pension = pensions(:one)
  end

  test "visiting the index" do
    visit pensions_url
    assert_selector "h1", text: "Pensions"
  end

  test "creating a Pension" do
    visit pensions_url
    click_on "New Pension"

    fill_in "Content", with: @pension.content
    fill_in "Creation date", with: @pension.creation_date
    fill_in "Name", with: @pension.name
    fill_in "Note", with: @pension.note
    fill_in "Position", with: @pension.position
    fill_in "Revision date", with: @pension.revision_date
    fill_in "Title", with: @pension.title
    click_on "Create Pension"

    assert_text "Pension was successfully created"
    click_on "Back"
  end

  test "updating a Pension" do
    visit pensions_url
    click_on "Edit", match: :first

    fill_in "Content", with: @pension.content
    fill_in "Creation date", with: @pension.creation_date
    fill_in "Name", with: @pension.name
    fill_in "Note", with: @pension.note
    fill_in "Position", with: @pension.position
    fill_in "Revision date", with: @pension.revision_date
    fill_in "Title", with: @pension.title
    click_on "Update Pension"

    assert_text "Pension was successfully updated"
    click_on "Back"
  end

  test "destroying a Pension" do
    visit pensions_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Pension was successfully destroyed"
  end
end
