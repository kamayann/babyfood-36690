class CreateBabyUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :baby_users do |t|
      t.references :baby, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.timestamps
    end
  end
end
