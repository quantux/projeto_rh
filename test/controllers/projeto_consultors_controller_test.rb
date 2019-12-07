require 'test_helper'

class ProjetoConsultorsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @projeto_consultor = projeto_consultors(:one)
  end

  test "should get index" do
    get projeto_consultors_url
    assert_response :success
  end

  test "should get new" do
    get new_projeto_consultor_url
    assert_response :success
  end

  test "should create projeto_consultor" do
    assert_difference('ProjetoConsultor.count') do
      post projeto_consultors_url, params: { projeto_consultor: { consultor_id: @projeto_consultor.consultor_id, projeto_id: @projeto_consultor.projeto_id } }
    end

    assert_redirected_to projeto_consultor_url(ProjetoConsultor.last)
  end

  test "should show projeto_consultor" do
    get projeto_consultor_url(@projeto_consultor)
    assert_response :success
  end

  test "should get edit" do
    get edit_projeto_consultor_url(@projeto_consultor)
    assert_response :success
  end

  test "should update projeto_consultor" do
    patch projeto_consultor_url(@projeto_consultor), params: { projeto_consultor: { consultor_id: @projeto_consultor.consultor_id, projeto_id: @projeto_consultor.projeto_id } }
    assert_redirected_to projeto_consultor_url(@projeto_consultor)
  end

  test "should destroy projeto_consultor" do
    assert_difference('ProjetoConsultor.count', -1) do
      delete projeto_consultor_url(@projeto_consultor)
    end

    assert_redirected_to projeto_consultors_url
  end
end
