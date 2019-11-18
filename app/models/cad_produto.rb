class CadProduto < ApplicationRecord
  belongs_to :unidade
  belongs_to :produto
end
