require "application_system_test_case"

class ProjetoConsultorsTest < ApplicationSystemTestCase
  setup do
    @projeto_consultor = projeto_consultors(:one)
  end

  test "visiting the index" do
    visit projeto_consultors_url
    assert_selector "h1", text: "Projeto Consultors"
  end

  test "creating a Projeto consultor" do
    visit projeto_consultors_url
    click_on "New Projeto Consultor"

    fill_in "Consultor", with: @projeto_consultor.consultor_id
    fill_in "Projeto", with: @projeto_consultor.projeto_id
    click_on "Create Projeto consultor"

    assert_text "Projeto consultor was successfully created"
    click_on "Back"
  end

  test "updating a Projeto consultor" do
    visit projeto_consultors_url
    click_on "Edit", match: :first

    fill_in "Consultor", with: @projeto_consultor.consultor_id
    fill_in "Projeto", with: @projeto_consultor.projeto_id
    click_on "Update Projeto consultor"

    assert_text "Projeto consultor was successfully updated"
    click_on "Back"
  end

  test "destroying a Projeto consultor" do
    visit projeto_consultors_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Projeto consultor was successfully destroyed"
  end
end
