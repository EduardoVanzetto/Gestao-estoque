class MovEstoque < ApplicationRecord
  belongs_to :pessoa
  belongs_to :operacao
  belongs_to :produto

  validates :data, :quantidade, :pessoa, :operacao, :produto, presence: true
  validates :data, :pessoa, :operacao, uniqueness: true
  validates :quantidade, numericality: { greater_than: 0 }

  scope :por_operacao, lambda { |produto, data, operacao|
    where('produto_id = ? and data <= ? and operacao_id = ?', produto, data, operacao).sum(:quantidade)
  }
end
