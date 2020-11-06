class Post < ApplicationRecord
  validates :bookname, presence:true
  validates :imege,presence:true
  validates :text, presence: true
end
