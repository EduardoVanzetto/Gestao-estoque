require 'test_helper'

class CadProdutosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cad_produto = cad_produtos(:one)
  end

  test "should get index" do
    get cad_produtos_url
    assert_response :success
  end

  test "should get new" do
    get new_cad_produto_url
    assert_response :success
  end

  test "should create cad_produto" do
    assert_difference('CadProduto.count') do
      post cad_produtos_url, params: { cad_produto: { nome: @cad_produto.nome, produto_id: @cad_produto.produto_id, unidade_id: @cad_produto.unidade_id } }
    end

    assert_redirected_to cad_produto_url(CadProduto.last)
  end

  test "should show cad_produto" do
    get cad_produto_url(@cad_produto)
    assert_response :success
  end

  test "should get edit" do
    get edit_cad_produto_url(@cad_produto)
    assert_response :success
  end

  test "should update cad_produto" do
    patch cad_produto_url(@cad_produto), params: { cad_produto: { nome: @cad_produto.nome, produto_id: @cad_produto.produto_id, unidade_id: @cad_produto.unidade_id } }
    assert_redirected_to cad_produto_url(@cad_produto)
  end

  test "should destroy cad_produto" do
    assert_difference('CadProduto.count', -1) do
      delete cad_produto_url(@cad_produto)
    end

    assert_redirected_to cad_produtos_url
  end
end
