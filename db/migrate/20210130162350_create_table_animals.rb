class CreateTableAnimals < ActiveRecord::Migration[6.0]
  def change
    create_table :animals do |t|
      t.string :name
      t.string :category 
      t.string :gender 
      t.string :color
      t.integer :age
    end
  end
end
