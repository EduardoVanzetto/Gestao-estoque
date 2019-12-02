require 'rails_helper'

RSpec.describe MovimentoService, type: :model do

    context 'ao processar' do

        let(:endereco) { FactoryBot.create(:endereco) }
        let(:pessoa) { FactoryBot.create(:pessoa, endereco: endereco) }
        let(:cadastro_produto) { FactoryBot.create(:cad_produto) }
        let(:unidade) { FactoryBot.create(:unidade) }
        let(:produto) { FactoryBot.create(:produto, 
                                          cad_produto: cadastro_produto,
                                          unidade: unidade) }
        
        context 'uma compra' do
            let(:comprar) { FactoryBot.create(:operacao_compra) }
            let(:compra) { MovimentoService.comprar( FactoryBot.create(:movimento, operacao: comprar) ) }

            it 'retornara uma instancia de Movimento' do
                expect(compra).to be_an_instance_of(Movimento)
            end

            it 'salvar o movimento' do
                expect(compra.persisted?).to be true
            end
        end

        context 'venda com estoque menor ou igual ao cadastrado' do
            let(:vender) { FactoryBot.create(:operacao_venda) }
            let(:venda) { MovimentoService.vender( FactoryBot.create(:movimento, operacao: vender) ) }
            
            it 'retornara uma instancia de Movimento' do
                expect(venda).to be_an_instance_of(Movimento)
            end

            it 'salvar o movimento' do
                expect(venda.persisted?).to be true
            end
        end


        context 'venda com quantidade maior do que o cadastrado' do
            let(:vender) { FactoryBot.create(:operacao_venda) }
            let(:venda) { MovimentoService.vender( FactoryBot.create(:movimento, operacao: vender, quantidade: 100) ) }
            it 'validar' do
                expect{ venda }.to raise_error(an_instance_of(StandardError).and having_attributes(message: 'Estoque maior do que o disponivel'))
            end
        end


        context 'devolucao de compra com estoque maior ou igual que a quantidade' do
            let(:operacao_devolucao_compra) { FactoryBot.create(:opDev_compra) }
            let(:devolucaoCompra) { MovimentoService.devCompra( FactoryBot.create(:movimento, operacao: opDev_compra) ) }

            it 'retornara uma instancia de Movimento' do
                expect(devolucaoCompra).to be_an_instance_of(Movimento)
            end

            it 'salvar o movimento' do
                expect(devolucaoCompra.persisted?).to be true
            end
        end

        context 'devolucao de compra com quantidade maior do que o cadastrado' do
            let(:operacao_devolucao_compra) { FactoryBot.create(:opDev_compra) }
            let(:devolucaoCompra) { MovimentoService.devCompra( FactoryBot.create(:movimento, operacao: devCompra, quantidade: 100) ) }
            it 'validar' do
                expect{ devolucaoCompra }.to raise_error(an_instance_of(StandardError).and having_attributes(message: 'Estoque maior do que o disponivel'))
            end
        end

        context 'devolucao de venda com estoque de compra maior ou igual que a quantidade' do
            let(:operacao_devolucao_venda) { FactoryBot.create(:opDev_venda) }
            let(:devolucaoVenda) { MovimentoService.devVenda( FactoryBot.create(:movimento, operacao: opDev_venda) ) }

            it 'retornara uma instancia de Movimento' do
                expect(devolucaoVenda).to be_an_instance_of(Movimento)
            end

            it 'salvar o movimento' do
                expect(devolucaoVenda.persisted?).to be true
            end
        end

        context 'devolucao de compra com quantidade maior do que o cadastrado' do
            let(:operacao_devolucao_venda) { FactoryBot.create(:opDev_venda) }
            let(:devolucaoVenda) { MovimentoService.devVenda( FactoryBot.create(:movimento, operacao: opDev_venda, quantidade: 100) ) }
            it 'validar' do
                expect{ devolucaoVenda }.to raise_error(an_instance_of(StandardError).and having_attributes(message: 'Estoque maior do que o disponivel'))
            end
        end

    end

end