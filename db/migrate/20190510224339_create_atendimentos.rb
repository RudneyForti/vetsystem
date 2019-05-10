class CreateAtendimentos < ActiveRecord::Migration[5.2]
  def change
    create_table :atendimentos do |t|
      t.references :Animal, foreign_key: true
      t.string :observacao
      t.date :data

      t.timestamps
    end
  end
end
