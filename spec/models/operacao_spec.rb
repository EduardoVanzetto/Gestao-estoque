require 'rails_helper'

RSpec.describe Operacao, type: :model do

  context 'validações gerais' do
  
    it { should validate_presence_of(:descricao) }
    it { should validate_uniqueness_of(:descricao) }
    it { is_expected.to allow_values('venda', 'compra', 'devolucaoVenda', 'devolucaoCompra').for(:tipo) }
    it { should define_enum_for(:tipo) }
  
  end
end