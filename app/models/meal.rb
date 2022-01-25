class Meal < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :meal_time
  belongs_to :baby

  with_options presence: true do
    validates :food
    validates :meal_date
    validates :meal_time
  end

  validates :meal_time_id, numericality: { other_than: 1, message: "can't be blank" } 
end
