FactoryBot.define do

    factory :movimento do

      data { '2019-12-01' }
      quantidade { 35 }

      association :pessoa, factory: :pessoa
      association :operacao, factory: :operacao
      association :produto, factory: :produto
      
    end
  end