require 'rails_helper'

RSpec.describe Pessoa, type: :model do
  context 'validações gerais' do
    
    it { should validate_presence_of(:nome) }
    it { should validate_presence_of(:documento) }
    it { should validate_uniqueness_of(:documento) }
    it { should belong_to(:endereco) }
    
end
end