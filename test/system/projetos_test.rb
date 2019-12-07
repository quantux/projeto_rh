require "application_system_test_case"

class ProjetosTest < ApplicationSystemTestCase
  setup do
    @projeto = projetos(:one)
  end

  test "visiting the index" do
    visit projetos_url
    assert_selector "h1", text: "Projetos"
  end

  test "creating a Projeto" do
    visit projetos_url
    click_on "New Projeto"

    fill_in "Descricao", with: @projeto.descricao
    fill_in "Empresa", with: @projeto.empresa_id
    fill_in "Nome", with: @projeto.nome
    click_on "Create Projeto"

    assert_text "Projeto was successfully created"
    click_on "Back"
  end

  test "updating a Projeto" do
    visit projetos_url
    click_on "Edit", match: :first

    fill_in "Descricao", with: @projeto.descricao
    fill_in "Empresa", with: @projeto.empresa_id
    fill_in "Nome", with: @projeto.nome
    click_on "Update Projeto"

    assert_text "Projeto was successfully updated"
    click_on "Back"
  end

  test "destroying a Projeto" do
    visit projetos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Projeto was successfully destroyed"
  end
end
