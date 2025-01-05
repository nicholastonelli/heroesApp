require "application_system_test_case"

class VesselsTest < ApplicationSystemTestCase
  setup do
    @vessel = vessels(:one)
  end

  test "visiting the index" do
    visit vessels_url
    assert_selector "h1", text: "Vessels"
  end

  test "should create vessel" do
    visit vessels_url
    click_on "New vessel"

    fill_in "Complement", with: @vessel.complement
    fill_in "Cost", with: @vessel.cost
    fill_in "Height", with: @vessel.height
    fill_in "Hull sections", with: @vessel.hull_sections
    fill_in "Maneuverablility", with: @vessel.maneuverablility
    fill_in "Mounts", with: @vessel.mounts
    fill_in "Name", with: @vessel.name
    fill_in "Overall ac", with: @vessel.overall_ac
    fill_in "Propulsion", with: @vessel.propulsion
    fill_in "Ram", with: @vessel.ram
    fill_in "Rigging hp", with: @vessel.rigging_hp
    fill_in "Rigging sections", with: @vessel.rigging_sections
    fill_in "Rowers", with: @vessel.rowers
    fill_in "Seaworthiness", with: @vessel.seaworthiness
    fill_in "Section ac", with: @vessel.section_ac
    fill_in "Section hp", with: @vessel.section_hp
    fill_in "Shiphandling", with: @vessel.shiphandling
    fill_in "Sink", with: @vessel.sink
    fill_in "Size", with: @vessel.size
    fill_in "Space", with: @vessel.space
    fill_in "Speed", with: @vessel.speed
    fill_in "Spped", with: @vessel.spped
    fill_in "Type", with: @vessel.type
    fill_in "Watch", with: @vessel.watch
    click_on "Create Vessel"

    assert_text "Vessel was successfully created"
    click_on "Back"
  end

  test "should update Vessel" do
    visit vessel_url(@vessel)
    click_on "Edit this vessel", match: :first

    fill_in "Complement", with: @vessel.complement
    fill_in "Cost", with: @vessel.cost
    fill_in "Height", with: @vessel.height
    fill_in "Hull sections", with: @vessel.hull_sections
    fill_in "Maneuverablility", with: @vessel.maneuverablility
    fill_in "Mounts", with: @vessel.mounts
    fill_in "Name", with: @vessel.name
    fill_in "Overall ac", with: @vessel.overall_ac
    fill_in "Propulsion", with: @vessel.propulsion
    fill_in "Ram", with: @vessel.ram
    fill_in "Rigging hp", with: @vessel.rigging_hp
    fill_in "Rigging sections", with: @vessel.rigging_sections
    fill_in "Rowers", with: @vessel.rowers
    fill_in "Seaworthiness", with: @vessel.seaworthiness
    fill_in "Section ac", with: @vessel.section_ac
    fill_in "Section hp", with: @vessel.section_hp
    fill_in "Shiphandling", with: @vessel.shiphandling
    fill_in "Sink", with: @vessel.sink
    fill_in "Size", with: @vessel.size
    fill_in "Space", with: @vessel.space
    fill_in "Speed", with: @vessel.speed
    fill_in "Spped", with: @vessel.spped
    fill_in "Type", with: @vessel.type
    fill_in "Watch", with: @vessel.watch
    click_on "Update Vessel"

    assert_text "Vessel was successfully updated"
    click_on "Back"
  end

  test "should destroy Vessel" do
    visit vessel_url(@vessel)
    click_on "Destroy this vessel", match: :first

    assert_text "Vessel was successfully destroyed"
  end
end
