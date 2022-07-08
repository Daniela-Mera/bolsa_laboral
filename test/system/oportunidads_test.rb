require "application_system_test_case"

class OportunidadsTest < ApplicationSystemTestCase
  setup do
    @oportunidad = oportunidads(:one)
  end

  test "visiting the index" do
    visit oportunidads_url
    assert_selector "h1", text: "Oportunidads"
  end

  test "should create oportunidad" do
    visit oportunidads_url
    click_on "New oportunidad"

    click_on "Create Oportunidad"

    assert_text "Oportunidad was successfully created"
    click_on "Back"
  end

  test "should update Oportunidad" do
    visit oportunidad_url(@oportunidad)
    click_on "Edit this oportunidad", match: :first

    click_on "Update Oportunidad"

    assert_text "Oportunidad was successfully updated"
    click_on "Back"
  end

  test "should destroy Oportunidad" do
    visit oportunidad_url(@oportunidad)
    click_on "Destroy this oportunidad", match: :first

    assert_text "Oportunidad was successfully destroyed"
  end
end
