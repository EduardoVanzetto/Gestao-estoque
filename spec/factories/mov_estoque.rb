FactoryBot.define do

    factory :mov_estoque do

      data { '2019-12-01' }
      quantidade { 35 }

      association :pessoa, factory: :pessoa
      association :operacao, factory: :operacao
      association :cad_produto, factory: :cad_produto
      
    end
  end