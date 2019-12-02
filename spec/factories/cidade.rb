FactoryBot.define do

    factory :cidade do

      nome { 'Marmeleiro' }
  
      association :estado, factory: :estado
      
    end
  end