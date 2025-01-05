require "test_helper"

class VesselsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @vessel = vessels(:one)
  end

  test "should get index" do
    get vessels_url
    assert_response :success
  end

  test "should get new" do
    get new_vessel_url
    assert_response :success
  end

  test "should create vessel" do
    assert_difference("Vessel.count") do
      post vessels_url, params: { vessel: { complement: @vessel.complement, cost: @vessel.cost, height: @vessel.height, hull_sections: @vessel.hull_sections, maneuverablility: @vessel.maneuverablility, mounts: @vessel.mounts, name: @vessel.name, overall_ac: @vessel.overall_ac, propulsion: @vessel.propulsion, ram: @vessel.ram, rigging_hp: @vessel.rigging_hp, rigging_sections: @vessel.rigging_sections, rowers: @vessel.rowers, seaworthiness: @vessel.seaworthiness, section_ac: @vessel.section_ac, section_hp: @vessel.section_hp, shiphandling: @vessel.shiphandling, sink: @vessel.sink, size: @vessel.size, space: @vessel.space, speed: @vessel.speed, spped: @vessel.spped, type: @vessel.type, watch: @vessel.watch } }
    end

    assert_redirected_to vessel_url(Vessel.last)
  end

  test "should show vessel" do
    get vessel_url(@vessel)
    assert_response :success
  end

  test "should get edit" do
    get edit_vessel_url(@vessel)
    assert_response :success
  end

  test "should update vessel" do
    patch vessel_url(@vessel), params: { vessel: { complement: @vessel.complement, cost: @vessel.cost, height: @vessel.height, hull_sections: @vessel.hull_sections, maneuverablility: @vessel.maneuverablility, mounts: @vessel.mounts, name: @vessel.name, overall_ac: @vessel.overall_ac, propulsion: @vessel.propulsion, ram: @vessel.ram, rigging_hp: @vessel.rigging_hp, rigging_sections: @vessel.rigging_sections, rowers: @vessel.rowers, seaworthiness: @vessel.seaworthiness, section_ac: @vessel.section_ac, section_hp: @vessel.section_hp, shiphandling: @vessel.shiphandling, sink: @vessel.sink, size: @vessel.size, space: @vessel.space, speed: @vessel.speed, spped: @vessel.spped, type: @vessel.type, watch: @vessel.watch } }
    assert_redirected_to vessel_url(@vessel)
  end

  test "should destroy vessel" do
    assert_difference("Vessel.count", -1) do
      delete vessel_url(@vessel)
    end

    assert_redirected_to vessels_url
  end
end
