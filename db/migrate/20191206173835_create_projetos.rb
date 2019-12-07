class CreateProjetos < ActiveRecord::Migration[6.0]
  def change
    create_table :projetos do |t|
      t.string :nome
      t.text :descricao
      t.datetime :data_inicio
      t.datetime :data_fim
      t.integer :empresa_id

      t.timestamps
    end
  end
end
