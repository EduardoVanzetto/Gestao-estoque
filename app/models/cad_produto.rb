class CadProduto < ApplicationRecord
  belongs_to :unidade
  belongs_to :produto

  validates :nome, presence:true, uniqueness: true
end
