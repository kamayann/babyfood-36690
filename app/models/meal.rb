class Meal < ApplicationRecord
  belongs_to :baby

  with_options presence: true do
    validates :food
    validates :meal_date
    validates :meal_time
  end
end
