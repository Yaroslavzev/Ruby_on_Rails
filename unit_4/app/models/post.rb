class Post < ApplicationRecord
  belongs_to :user
  has_many  :comments ,  as:  :commentable
  has_many  :commentators ,  through:  :comments ,  source:  :user
  has_many  :seo ,  as:  :seontable

  #validates :title, presence: true
  #validates :title, length: { minimum: 5}
  #validates :body, presence: true
  #validates :body, length: { minimum: 5}
end
