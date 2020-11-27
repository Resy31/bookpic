class Post < ApplicationRecord

  validates :bookname, presence:true
  validates :image,presence:true
  validates :text, presence: true
  belongs_to :user
  has_many :comments
  has_one_attached :image

  def self.search(search)
    if search != ""
      Post.where('text LIKE(?)', "%#{search}%")
    else
      Post.all
    end
  end
end
