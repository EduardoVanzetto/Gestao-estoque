class CreateEnderecos < ActiveRecord::Migration[5.2]
  def change
    create_table :enderecos do |t|
      t.string :cep
      t.belongs_to :cidade, foreign_key: true

      t.timestamps
    end
  end
end
