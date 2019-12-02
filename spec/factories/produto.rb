FactoryBot.define do

    factory :produto do
        
      nome { 'Pera' }
  
      association :unidade, factory: :unidade
      association :cad_produto, factory: :cad_produto
    end
  end