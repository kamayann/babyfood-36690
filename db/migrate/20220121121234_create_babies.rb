class CreateBabies < ActiveRecord::Migration[6.0]
  def change
    create_table :babies do |t|
      t.string :nickname,  null: false
      t.date   :birth_day, null: false
      t.references :user, null: false, foreign_key: true
      t.timestamps
    end
  end
end
