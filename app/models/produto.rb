class Produto < ApplicationRecord

    validates :nome, presence: true, uniqueness: true

end
