class CreateDays < ActiveRecord::Migration[6.0]
  def change
    create_table :days do |t|
      t.integer :plan_id
      t.string :name
      t.string :breakfast
      t.string :lunch
      t.string :dinner
      t.float :total_calories

      t.timestamps
    end
  end
end
