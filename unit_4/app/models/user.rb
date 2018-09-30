class User < ApplicationRecord
  has_many :posts, dependent: :destroy
  has_many :comments, dependent: :destroy
  has_many  :commented_posts ,  through:  :comments ,  source:  :commentable, source_type:  :Post
  has_many  :commented_users ,  through:  :comments ,  source:  :commentable, source_type:  :User

  #validates :name, presence: true
  #validates :name, length: {  minimum: 2 }
  #validates :name, uniqueness: true
end
