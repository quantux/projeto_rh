class CreateEnderecos < ActiveRecord::Migration[6.0]
  def change
    create_table :enderecos do |t|
      t.string :rua
      t.integer :cep
      t.string :bairro
      t.string :cidade
      t.string :estado
      t.string :complemento
      t.decimal :latitude
      t.decimal :longitude
      t.integer :empresa_id

      t.timestamps
    end
  end
end
