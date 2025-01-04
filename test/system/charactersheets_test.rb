require "application_system_test_case"

class CharactersheetsTest < ApplicationSystemTestCase
  setup do
    @charactersheet = charactersheets(:one)
  end

  test "visiting the index" do
    visit charactersheets_url
    assert_selector "h1", text: "Charactersheets"
  end

  test "should create charactersheet" do
    visit charactersheets_url
    click_on "New charactersheet"

    fill_in "Name", with: @charactersheet.name
    click_on "Create Charactersheet"

    assert_text "Charactersheet was successfully created"
    click_on "Back"
  end

  test "should update Charactersheet" do
    visit charactersheet_url(@charactersheet)
    click_on "Edit this charactersheet", match: :first

    fill_in "Name", with: @charactersheet.name
    click_on "Update Charactersheet"

    assert_text "Charactersheet was successfully updated"
    click_on "Back"
  end

  test "should destroy Charactersheet" do
    visit charactersheet_url(@charactersheet)
    click_on "Destroy this charactersheet", match: :first

    assert_text "Charactersheet was successfully destroyed"
  end
end
