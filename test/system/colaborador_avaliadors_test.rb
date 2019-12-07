require "application_system_test_case"

class ColaboradorAvaliadorsTest < ApplicationSystemTestCase
  setup do
    @colaborador_avaliador = colaborador_avaliadors(:one)
  end

  test "visiting the index" do
    visit colaborador_avaliadors_url
    assert_selector "h1", text: "Colaborador Avaliadors"
  end

  test "creating a Colaborador avaliador" do
    visit colaborador_avaliadors_url
    click_on "New Colaborador Avaliador"

    fill_in "Avaliador", with: @colaborador_avaliador.avaliador_id
    fill_in "Colaborador", with: @colaborador_avaliador.colaborador_id
    fill_in "Nota competencia 1", with: @colaborador_avaliador.nota_competencia_1
    fill_in "Nota competencia 2", with: @colaborador_avaliador.nota_competencia_2
    fill_in "Nota competencia 3", with: @colaborador_avaliador.nota_competencia_3
    click_on "Create Colaborador avaliador"

    assert_text "Colaborador avaliador was successfully created"
    click_on "Back"
  end

  test "updating a Colaborador avaliador" do
    visit colaborador_avaliadors_url
    click_on "Edit", match: :first

    fill_in "Avaliador", with: @colaborador_avaliador.avaliador_id
    fill_in "Colaborador", with: @colaborador_avaliador.colaborador_id
    fill_in "Nota competencia 1", with: @colaborador_avaliador.nota_competencia_1
    fill_in "Nota competencia 2", with: @colaborador_avaliador.nota_competencia_2
    fill_in "Nota competencia 3", with: @colaborador_avaliador.nota_competencia_3
    click_on "Update Colaborador avaliador"

    assert_text "Colaborador avaliador was successfully updated"
    click_on "Back"
  end

  test "destroying a Colaborador avaliador" do
    visit colaborador_avaliadors_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Colaborador avaliador was successfully destroyed"
  end
end
