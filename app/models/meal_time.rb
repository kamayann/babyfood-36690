class MealTime < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '朝食' },
    { id: 3, name: 'おやつ(朝)' },
    { id: 4, name: '昼食' },
    { id: 5, name: 'おやつ(昼)' },
    { id: 6, name: '夕食' },
    { id: 7, name: '就寝前' },
    { id: 8, name: 'その他' },
  ]

  include ActiveHash::Associations
  has_many :meals
  
  end