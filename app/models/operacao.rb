class Operacao < ApplicationRecord
    enum tipo: { venda: 0, compra: 1, dev_compra: 2, dev_venda: 3}

    validates :nome, :tipo, presence: true

end
