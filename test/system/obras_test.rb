require "application_system_test_case"

class ObrasTest < ApplicationSystemTestCase
  setup do
    @obra = obras(:one)
  end

  test "visiting the index" do
    visit obras_url
    assert_selector "h1", text: "Obras"
  end

  test "should create obra" do
    visit obras_url
    click_on "New obra"

    fill_in "Calle", with: @obra.calle
    fill_in "Ciudad", with: @obra.ciudad
    fill_in "Codigo postal", with: @obra.codigo_postal
    fill_in "Costo", with: @obra.costo
    fill_in "Estado", with: @obra.estado
    fill_in "Fecha fin", with: @obra.fecha_fin
    fill_in "Fecha inicio", with: @obra.fecha_inicio
    fill_in "Nombre", with: @obra.nombre
    fill_in "Numero", with: @obra.numero
    click_on "Create Obra"

    assert_text "Obra was successfully created"
    click_on "Back"
  end

  test "should update Obra" do
    visit obra_url(@obra)
    click_on "Edit this obra", match: :first

    fill_in "Calle", with: @obra.calle
    fill_in "Ciudad", with: @obra.ciudad
    fill_in "Codigo postal", with: @obra.codigo_postal
    fill_in "Costo", with: @obra.costo
    fill_in "Estado", with: @obra.estado
    fill_in "Fecha fin", with: @obra.fecha_fin
    fill_in "Fecha inicio", with: @obra.fecha_inicio
    fill_in "Nombre", with: @obra.nombre
    fill_in "Numero", with: @obra.numero
    click_on "Update Obra"

    assert_text "Obra was successfully updated"
    click_on "Back"
  end

  test "should destroy Obra" do
    visit obra_url(@obra)
    click_on "Destroy this obra", match: :first

    assert_text "Obra was successfully destroyed"
  end
end
