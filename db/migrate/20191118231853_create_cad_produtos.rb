class CreateCadProdutos < ActiveRecord::Migration[5.2]
  def change
    create_table :cad_produtos do |t|
      t.string :nome
      t.belongs_to :unidade, foreign_key: true
      t.belongs_to :produto, foreign_key: true

      t.timestamps
    end
  end
end
