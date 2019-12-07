require "application_system_test_case"

class ConsultorsTest < ApplicationSystemTestCase
  setup do
    @consultor = consultors(:one)
  end

  test "visiting the index" do
    visit consultors_url
    assert_selector "h1", text: "Consultors"
  end

  test "creating a Consultor" do
    visit consultors_url
    click_on "New Consultor"

    fill_in "Email", with: @consultor.email
    fill_in "Nome", with: @consultor.nome
    fill_in "Telefone", with: @consultor.telefone
    click_on "Create Consultor"

    assert_text "Consultor was successfully created"
    click_on "Back"
  end

  test "updating a Consultor" do
    visit consultors_url
    click_on "Edit", match: :first

    fill_in "Email", with: @consultor.email
    fill_in "Nome", with: @consultor.nome
    fill_in "Telefone", with: @consultor.telefone
    click_on "Update Consultor"

    assert_text "Consultor was successfully updated"
    click_on "Back"
  end

  test "destroying a Consultor" do
    visit consultors_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Consultor was successfully destroyed"
  end
end
