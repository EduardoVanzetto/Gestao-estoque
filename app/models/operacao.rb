class Operacao < ApplicationRecord
    
    validates :descricao, presence: true
    validates :descricao, uniqueness: true
    enum tipo: { venda: 1, compra: 2, devolucaoVenda: 3, devolucaoCompra: 4}

end
