require "application_system_test_case"

class CompetenciaTest < ApplicationSystemTestCase
  setup do
    @competencium = competencia(:one)
  end

  test "visiting the index" do
    visit competencia_url
    assert_selector "h1", text: "Competencia"
  end

  test "creating a Competencium" do
    visit competencia_url
    click_on "New Competencium"

    fill_in "Descricao", with: @competencium.descricao
    fill_in "Nome", with: @competencium.nome
    click_on "Create Competencium"

    assert_text "Competencium was successfully created"
    click_on "Back"
  end

  test "updating a Competencium" do
    visit competencia_url
    click_on "Edit", match: :first

    fill_in "Descricao", with: @competencium.descricao
    fill_in "Nome", with: @competencium.nome
    click_on "Update Competencium"

    assert_text "Competencium was successfully updated"
    click_on "Back"
  end

  test "destroying a Competencium" do
    visit competencia_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Competencium was successfully destroyed"
  end
end
