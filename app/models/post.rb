class Post < ApplicationRecord

  has_one_attached :image


  validates :bookname, presence:true
  validates :imege,presence:true
  validates :text, presence: true
end
