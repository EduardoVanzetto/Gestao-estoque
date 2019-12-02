require 'rails_helper'

RSpec.describe Endereco, type: :model do
  context 'validações gerais' do
    
    it { should belong_to(:cidade) }
    it { should belong_to(:estado) }
    
end
end