class CreateAnimals < ActiveRecord::Migration[5.2]
  def change
    create_table :animals do |t|
      t.string :nome
      t.references :cliente, foreign_key: true
      t.string :especie
      t.string :raca
      t.date :nascimento

      t.timestamps
    end
  end
end
