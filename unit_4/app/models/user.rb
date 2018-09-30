class User < ApplicationRecord
  has_many :posts, dependent: :destroy
  has_many :comments, dependent: :destroy
  has_many  :commented_posts ,  through:  :comments ,  source:  :commentable, source_type:  :Post
  has_many  :commented_users ,  through:  :comments ,  source:  :commentable, source_type:  :User

  def self.posts_of_moderators
    User.where(moderator: true).pluck(:id).map{ |e|  User.find(e).posts.size}.sum
  end
  #validates :name, presence: true
  #validates :name, length: {  minimum: 2 }
  #validates :name, uniqueness: true
end
