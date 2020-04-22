class CreateMeals < ActiveRecord::Migration[6.0]
  def change
    create_table :meals do |t|
      t.integer :day_id
      t.string :name
      t.string :dish
      t.string :type
      t.string :origin
      t.string :cuisine
      t.string :diet
      t.string :description
      t.string :image
      t.string :cooking_instructions
      t.float :calories

      t.timestamps
    end
  end
end
