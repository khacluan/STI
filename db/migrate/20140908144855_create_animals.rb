class CreateAnimals < ActiveRecord::Migration
  def change
    create_table :animals do |t|
      t.integer :tribe_id
      t.string :name
      t.string :kind

      t.timestamps
    end
  end
end
