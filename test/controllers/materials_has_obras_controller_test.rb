require "test_helper"

class MaterialsHasObrasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @materials_has_obra = materials_has_obras(:one)
  end

  test "should get index" do
    get materials_has_obras_url
    assert_response :success
  end

  test "should get new" do
    get new_materials_has_obra_url
    assert_response :success
  end

  test "should create materials_has_obra" do
    assert_difference("MaterialsHasObra.count") do
      post materials_has_obras_url, params: { materials_has_obra: { brand_id: @materials_has_obra.brand_id, cantidad: @materials_has_obra.cantidad, material_id: @materials_has_obra.material_id } }
    end

    assert_redirected_to materials_has_obra_url(MaterialsHasObra.last)
  end

  test "should show materials_has_obra" do
    get materials_has_obra_url(@materials_has_obra)
    assert_response :success
  end

  test "should get edit" do
    get edit_materials_has_obra_url(@materials_has_obra)
    assert_response :success
  end

  test "should update materials_has_obra" do
    patch materials_has_obra_url(@materials_has_obra), params: { materials_has_obra: { brand_id: @materials_has_obra.brand_id, cantidad: @materials_has_obra.cantidad, material_id: @materials_has_obra.material_id } }
    assert_redirected_to materials_has_obra_url(@materials_has_obra)
  end

  test "should destroy materials_has_obra" do
    assert_difference("MaterialsHasObra.count", -1) do
      delete materials_has_obra_url(@materials_has_obra)
    end

    assert_redirected_to materials_has_obras_url
  end
end
