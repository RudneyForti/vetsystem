class CreateAnimals < ActiveRecord::Migration[5.2]
  def change
    create_table :Animals do |t|
      t.string :nome
      t.references :cliente, foreign_key: true
      t.string :especie
      t.string :raca
      t.date :nascimento
      
      t.string :criador

      t.timestamps
    end
  end
end
