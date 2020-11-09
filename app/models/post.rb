class Post < ApplicationRecord

  validates :bookname, presence:true
  validates :image,presence:true
  validates :text, presence: true

end
