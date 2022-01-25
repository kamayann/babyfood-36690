class Baby < ApplicationRecord
  belongs_to :user
  has_many :meals, dependent: :destroy

  with_options presence: true do
    validates :nickname
    validates :birth_day
  end
end