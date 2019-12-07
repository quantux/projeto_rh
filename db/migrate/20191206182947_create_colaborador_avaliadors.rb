class CreateColaboradorAvaliadors < ActiveRecord::Migration[6.0]
  def change
    create_table :colaborador_avaliadors do |t|
      t.integer :nota
      t.integer :avaliador_id
      t.integer :colaborador_id

      t.timestamps
    end
  end
end
