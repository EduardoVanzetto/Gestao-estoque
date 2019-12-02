FactoryBot.define do

  factory :cad_produto do
      
    nome { 'Pera' }

    association :unidade, factory: :unidade
    association :produto, factory: :produto
  end
end
