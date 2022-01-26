class Relationship < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: 'ママ' },
    { id: 3, name: 'パパ' },
    { id: 4, name: 'お兄ちゃん' },
    { id: 5, name: 'お姉ちゃん' },
    { id: 6, name: 'おじいちゃん' },
    { id: 7, name: 'おばあちゃん' },
    { id: 8, name: 'おじさん' },
    { id: 9, name: 'おばさん' },
    { id: 10, name: 'その他' }
  ]

  include ActiveHash::Associations
  has_many :users

  end