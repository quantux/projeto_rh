require 'test_helper'

class ColaboradorAvaliadorsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @colaborador_avaliador = colaborador_avaliadors(:one)
  end

  test "should get index" do
    get colaborador_avaliadors_url
    assert_response :success
  end

  test "should get new" do
    get new_colaborador_avaliador_url
    assert_response :success
  end

  test "should create colaborador_avaliador" do
    assert_difference('ColaboradorAvaliador.count') do
      post colaborador_avaliadors_url, params: { colaborador_avaliador: { avaliador_id: @colaborador_avaliador.avaliador_id, colaborador_id: @colaborador_avaliador.colaborador_id, nota_competencia_1: @colaborador_avaliador.nota_competencia_1, nota_competencia_2: @colaborador_avaliador.nota_competencia_2, nota_competencia_3: @colaborador_avaliador.nota_competencia_3 } }
    end

    assert_redirected_to colaborador_avaliador_url(ColaboradorAvaliador.last)
  end

  test "should show colaborador_avaliador" do
    get colaborador_avaliador_url(@colaborador_avaliador)
    assert_response :success
  end

  test "should get edit" do
    get edit_colaborador_avaliador_url(@colaborador_avaliador)
    assert_response :success
  end

  test "should update colaborador_avaliador" do
    patch colaborador_avaliador_url(@colaborador_avaliador), params: { colaborador_avaliador: { avaliador_id: @colaborador_avaliador.avaliador_id, colaborador_id: @colaborador_avaliador.colaborador_id, nota_competencia_1: @colaborador_avaliador.nota_competencia_1, nota_competencia_2: @colaborador_avaliador.nota_competencia_2, nota_competencia_3: @colaborador_avaliador.nota_competencia_3 } }
    assert_redirected_to colaborador_avaliador_url(@colaborador_avaliador)
  end

  test "should destroy colaborador_avaliador" do
    assert_difference('ColaboradorAvaliador.count', -1) do
      delete colaborador_avaliador_url(@colaborador_avaliador)
    end

    assert_redirected_to colaborador_avaliadors_url
  end
end
