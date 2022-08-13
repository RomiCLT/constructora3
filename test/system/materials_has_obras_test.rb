require "application_system_test_case"

class MaterialsHasObrasTest < ApplicationSystemTestCase
  setup do
    @materials_has_obra = materials_has_obras(:one)
  end

  test "visiting the index" do
    visit materials_has_obras_url
    assert_selector "h1", text: "Materials has obras"
  end

  test "should create materials has obra" do
    visit materials_has_obras_url
    click_on "New materials has obra"

    fill_in "Brand", with: @materials_has_obra.brand_id
    fill_in "Cantidad", with: @materials_has_obra.cantidad
    fill_in "Material", with: @materials_has_obra.material_id
    click_on "Create Materials has obra"

    assert_text "Materials has obra was successfully created"
    click_on "Back"
  end

  test "should update Materials has obra" do
    visit materials_has_obra_url(@materials_has_obra)
    click_on "Edit this materials has obra", match: :first

    fill_in "Brand", with: @materials_has_obra.brand_id
    fill_in "Cantidad", with: @materials_has_obra.cantidad
    fill_in "Material", with: @materials_has_obra.material_id
    click_on "Update Materials has obra"

    assert_text "Materials has obra was successfully updated"
    click_on "Back"
  end

  test "should destroy Materials has obra" do
    visit materials_has_obra_url(@materials_has_obra)
    click_on "Destroy this materials has obra", match: :first

    assert_text "Materials has obra was successfully destroyed"
  end
end
