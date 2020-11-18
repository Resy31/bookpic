class Post < ApplicationRecord

  validates :bookname, presence:true
  validates :image,presence:true
  validates :text, presence: true
  belongs_to :user
  has_many :comments

end
