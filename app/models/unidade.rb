class Unidade < ApplicationRecord

    validates :descricao, :sigla, presence: true
    validates :descricao, :sigla, uniqueness: true

end