class Baby < ApplicationRecord
  has_many :baby_users
  has_many :users, through: :baby_users
  has_many :meals, dependent: :destroy

  validates :nickname, presence: true, length: { maximum: 10}

  validates :birth_day, presence: true
  
end