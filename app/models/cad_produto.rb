class CadProduto < ApplicationRecord
  belongs_to :unidade
  belongs_to :produto

  validates :nome, :unidade, presence: true
  validates :nome, uniqueness: true

end
