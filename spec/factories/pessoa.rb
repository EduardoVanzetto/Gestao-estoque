FactoryBot.define do

    factory :pessoa do
        
        nome { 'Eduardo' }
        documento { '08717191939' }

        association :endereco, factory: :endereco
    end
    
end