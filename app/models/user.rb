class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :relationship

  has_many :baby_users
  has_many :babies, through: :baby_users

  with_options presence: true do
    validates :nickname
  end

  validates :relationship_id, numericality: { other_than: 1, message: "can't be blank" } 

  validates :password, format: { with: /\A(?=.*?[a-z])(?=.*?\d)[a-z\d]+\z/i }, on: :create
  
end
