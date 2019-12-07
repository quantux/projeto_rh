class CreateProjetoColaboradors < ActiveRecord::Migration[6.0]
  def change
    create_table :projeto_colaboradors do |t|
      t.integer :projeto_id
      t.integer :colaborador_id

      t.timestamps
    end
  end
end
