class Estado < ApplicationRecord

    validates :uf, presence: true, uniqueness: true

end
