class CreateProjetoConsultors < ActiveRecord::Migration[6.0]
  def change
    create_table :projeto_consultors do |t|
      t.integer :projeto_id
      t.integer :consultor_id

      t.timestamps
    end
  end
end
