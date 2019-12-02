FactoryBot.define do

    factory :endereco do

      rua { 'Rua Macalli' }
      cep { '85615000' }
      numero { '12' }

      association :cidade, factory: :cidade
      association :estado, factory: :estado
      
    end
  end