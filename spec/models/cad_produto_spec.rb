require 'rails_helper'

RSpec.describe Cad_Produto, type: :model do
    context 'validações gerais' do

      it { should validate_presence_of(:nome) }
      it { should validate_uniqueness_of(:nome) }
      it { should belong_to(:unidade) }
      it { should belong_to(:cad_produto) }
      
  end
  end
