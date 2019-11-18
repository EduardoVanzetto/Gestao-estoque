class MovEstoque < ApplicationRecord
  belongs_to :pessoa
  belongs_to :operacao
  belongs_to :produto

  validates :data, :quantidade, presence: true
  validates :quantidade, numericality: {:greater_than_or_equal_to => 1 }
end
