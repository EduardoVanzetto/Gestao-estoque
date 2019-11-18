require 'test_helper'

class MovEstoquesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @mov_estoque = mov_estoques(:one)
  end

  test "should get index" do
    get mov_estoques_url
    assert_response :success
  end

  test "should get new" do
    get new_mov_estoque_url
    assert_response :success
  end

  test "should create mov_estoque" do
    assert_difference('MovEstoque.count') do
      post mov_estoques_url, params: { mov_estoque: { data: @mov_estoque.data, operacao_id: @mov_estoque.operacao_id, pessoa_id: @mov_estoque.pessoa_id, produto_id: @mov_estoque.produto_id, quantidade: @mov_estoque.quantidade } }
    end

    assert_redirected_to mov_estoque_url(MovEstoque.last)
  end

  test "should show mov_estoque" do
    get mov_estoque_url(@mov_estoque)
    assert_response :success
  end

  test "should get edit" do
    get edit_mov_estoque_url(@mov_estoque)
    assert_response :success
  end

  test "should update mov_estoque" do
    patch mov_estoque_url(@mov_estoque), params: { mov_estoque: { data: @mov_estoque.data, operacao_id: @mov_estoque.operacao_id, pessoa_id: @mov_estoque.pessoa_id, produto_id: @mov_estoque.produto_id, quantidade: @mov_estoque.quantidade } }
    assert_redirected_to mov_estoque_url(@mov_estoque)
  end

  test "should destroy mov_estoque" do
    assert_difference('MovEstoque.count', -1) do
      delete mov_estoque_url(@mov_estoque)
    end

    assert_redirected_to mov_estoques_url
  end
end
