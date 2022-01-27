class Baby < ApplicationRecord
  has_many :baby_users
  has_many :users, through: :baby_users
  has_many :meals, dependent: :destroy

  with_options presence: true do
    validates :nickname
    validates :birth_day
  end
end