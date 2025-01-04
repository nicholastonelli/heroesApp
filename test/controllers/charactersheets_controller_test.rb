require "test_helper"

class CharactersheetsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @charactersheet = charactersheets(:one)
  end

  test "should get index" do
    get charactersheets_url
    assert_response :success
  end

  test "should get new" do
    get new_charactersheet_url
    assert_response :success
  end

  test "should create charactersheet" do
    assert_difference("Charactersheet.count") do
      post charactersheets_url, params: { charactersheet: { name: @charactersheet.name } }
    end

    assert_redirected_to charactersheet_url(Charactersheet.last)
  end

  test "should show charactersheet" do
    get charactersheet_url(@charactersheet)
    assert_response :success
  end

  test "should get edit" do
    get edit_charactersheet_url(@charactersheet)
    assert_response :success
  end

  test "should update charactersheet" do
    patch charactersheet_url(@charactersheet), params: { charactersheet: { name: @charactersheet.name } }
    assert_redirected_to charactersheet_url(@charactersheet)
  end

  test "should destroy charactersheet" do
    assert_difference("Charactersheet.count", -1) do
      delete charactersheet_url(@charactersheet)
    end

    assert_redirected_to charactersheets_url
  end
end
