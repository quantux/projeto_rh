require 'test_helper'

class CompetenciaControllerTest < ActionDispatch::IntegrationTest
  setup do
    @competencium = competencia(:one)
  end

  test "should get index" do
    get competencia_url
    assert_response :success
  end

  test "should get new" do
    get new_competencium_url
    assert_response :success
  end

  test "should create competencium" do
    assert_difference('Competencium.count') do
      post competencia_url, params: { competencium: { descricao: @competencium.descricao, nome: @competencium.nome } }
    end

    assert_redirected_to competencium_url(Competencium.last)
  end

  test "should show competencium" do
    get competencium_url(@competencium)
    assert_response :success
  end

  test "should get edit" do
    get edit_competencium_url(@competencium)
    assert_response :success
  end

  test "should update competencium" do
    patch competencium_url(@competencium), params: { competencium: { descricao: @competencium.descricao, nome: @competencium.nome } }
    assert_redirected_to competencium_url(@competencium)
  end

  test "should destroy competencium" do
    assert_difference('Competencium.count', -1) do
      delete competencium_url(@competencium)
    end

    assert_redirected_to competencia_url
  end
end
