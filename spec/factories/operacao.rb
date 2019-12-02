FactoryBot.define do

    factory :op_compra, class: 'Operacao' do
        descricao { 'movimento' }
        tipo { :venda }
    end

    factory :op_venda, class: 'Operacao' do
        descricao { 'movimento' }
        tipo { :compra }
    end

    factory :opDev_venda, class: 'Operacao' do
        descricao { 'movimento' }
        tipo { :dev_venda }
    end

    factory :opDev_compra, class: 'Operacao' do
        descricao { 'movimento' }
        tipo { :dev_compra }
    end
end