require "application_system_test_case"

class ProjetoColaboradorsTest < ApplicationSystemTestCase
  setup do
    @projeto_colaborador = projeto_colaboradors(:one)
  end

  test "visiting the index" do
    visit projeto_colaboradors_url
    assert_selector "h1", text: "Projeto Colaboradors"
  end

  test "creating a Projeto colaborador" do
    visit projeto_colaboradors_url
    click_on "New Projeto Colaborador"

    fill_in "Colaborador", with: @projeto_colaborador.colaborador_id
    fill_in "Projeto", with: @projeto_colaborador.projeto_id
    click_on "Create Projeto colaborador"

    assert_text "Projeto colaborador was successfully created"
    click_on "Back"
  end

  test "updating a Projeto colaborador" do
    visit projeto_colaboradors_url
    click_on "Edit", match: :first

    fill_in "Colaborador", with: @projeto_colaborador.colaborador_id
    fill_in "Projeto", with: @projeto_colaborador.projeto_id
    click_on "Update Projeto colaborador"

    assert_text "Projeto colaborador was successfully updated"
    click_on "Back"
  end

  test "destroying a Projeto colaborador" do
    visit projeto_colaboradors_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Projeto colaborador was successfully destroyed"
  end
end
