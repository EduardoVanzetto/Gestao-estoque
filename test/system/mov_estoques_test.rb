require "application_system_test_case"

class MovEstoquesTest < ApplicationSystemTestCase
  setup do
    @mov_estoque = mov_estoques(:one)
  end

  test "visiting the index" do
    visit mov_estoques_url
    assert_selector "h1", text: "Mov Estoques"
  end

  test "creating a Mov estoque" do
    visit mov_estoques_url
    click_on "New Mov Estoque"

    fill_in "Data", with: @mov_estoque.data
    fill_in "Operacao", with: @mov_estoque.operacao_id
    fill_in "Pessoa", with: @mov_estoque.pessoa_id
    fill_in "Produto", with: @mov_estoque.produto_id
    fill_in "Quantidade", with: @mov_estoque.quantidade
    click_on "Create Mov estoque"

    assert_text "Mov estoque was successfully created"
    click_on "Back"
  end

  test "updating a Mov estoque" do
    visit mov_estoques_url
    click_on "Edit", match: :first

    fill_in "Data", with: @mov_estoque.data
    fill_in "Operacao", with: @mov_estoque.operacao_id
    fill_in "Pessoa", with: @mov_estoque.pessoa_id
    fill_in "Produto", with: @mov_estoque.produto_id
    fill_in "Quantidade", with: @mov_estoque.quantidade
    click_on "Update Mov estoque"

    assert_text "Mov estoque was successfully updated"
    click_on "Back"
  end

  test "destroying a Mov estoque" do
    visit mov_estoques_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Mov estoque was successfully destroyed"
  end
end
