require "application_system_test_case"

class ColaboradorsTest < ApplicationSystemTestCase
  setup do
    @colaborador = colaboradors(:one)
  end

  test "visiting the index" do
    visit colaboradors_url
    assert_selector "h1", text: "Colaboradors"
  end

  test "creating a Colaborador" do
    visit colaboradors_url
    click_on "New Colaborador"

    fill_in "Cargo", with: @colaborador.cargo
    fill_in "Competencia", with: @colaborador.competencia_id
    fill_in "Cpf", with: @colaborador.cpf
    fill_in "Data admissao", with: @colaborador.data_admissao
    fill_in "Data nascimento", with: @colaborador.data_nascimento
    check "Dependentes" if @colaborador.dependentes
    fill_in "Email", with: @colaborador.email
    fill_in "Empresa", with: @colaborador.empresa_id
    fill_in "Nome", with: @colaborador.nome
    fill_in "Telefone", with: @colaborador.telefone
    click_on "Create Colaborador"

    assert_text "Colaborador was successfully created"
    click_on "Back"
  end

  test "updating a Colaborador" do
    visit colaboradors_url
    click_on "Edit", match: :first

    fill_in "Cargo", with: @colaborador.cargo
    fill_in "Competencia", with: @colaborador.competencia_id
    fill_in "Cpf", with: @colaborador.cpf
    fill_in "Data admissao", with: @colaborador.data_admissao
    fill_in "Data nascimento", with: @colaborador.data_nascimento
    check "Dependentes" if @colaborador.dependentes
    fill_in "Email", with: @colaborador.email
    fill_in "Empresa", with: @colaborador.empresa_id
    fill_in "Nome", with: @colaborador.nome
    fill_in "Telefone", with: @colaborador.telefone
    click_on "Update Colaborador"

    assert_text "Colaborador was successfully updated"
    click_on "Back"
  end

  test "destroying a Colaborador" do
    visit colaboradors_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Colaborador was successfully destroyed"
  end
end
