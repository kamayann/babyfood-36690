class CreateMeals < ActiveRecord::Migration[6.0]
  def change
    create_table :meals do |t|
      t.string     :food,      null: false
      t.date       :meal_date, null: false
      t.integer    :meal_time, null: false
      t.references :baby,      null: false, foreign_key: true
      t.timestamps
    end
  end
end
