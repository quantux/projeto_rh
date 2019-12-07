require 'test_helper'

class ProjetoColaboradorsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @projeto_colaborador = projeto_colaboradors(:one)
  end

  test "should get index" do
    get projeto_colaboradors_url
    assert_response :success
  end

  test "should get new" do
    get new_projeto_colaborador_url
    assert_response :success
  end

  test "should create projeto_colaborador" do
    assert_difference('ProjetoColaborador.count') do
      post projeto_colaboradors_url, params: { projeto_colaborador: { colaborador_id: @projeto_colaborador.colaborador_id, projeto_id: @projeto_colaborador.projeto_id } }
    end

    assert_redirected_to projeto_colaborador_url(ProjetoColaborador.last)
  end

  test "should show projeto_colaborador" do
    get projeto_colaborador_url(@projeto_colaborador)
    assert_response :success
  end

  test "should get edit" do
    get edit_projeto_colaborador_url(@projeto_colaborador)
    assert_response :success
  end

  test "should update projeto_colaborador" do
    patch projeto_colaborador_url(@projeto_colaborador), params: { projeto_colaborador: { colaborador_id: @projeto_colaborador.colaborador_id, projeto_id: @projeto_colaborador.projeto_id } }
    assert_redirected_to projeto_colaborador_url(@projeto_colaborador)
  end

  test "should destroy projeto_colaborador" do
    assert_difference('ProjetoColaborador.count', -1) do
      delete projeto_colaborador_url(@projeto_colaborador)
    end

    assert_redirected_to projeto_colaboradors_url
  end
end
