class CreateColaboradors < ActiveRecord::Migration[6.0]
  def change
    create_table :colaboradors do |t|
      t.string :nome
      t.string :email
      t.string :cpf
      t.string :telefone
      t.boolean :dependentes
      t.datetime :data_nascimento
      t.datetime :data_admissao
      t.string :cargo
      t.integer :competencia_id
      t.integer :empresa_id

      t.timestamps
    end
  end
end
