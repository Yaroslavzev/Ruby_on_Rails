class Post < ApplicationRecord
  belongs_to :user
  validates :title, presence: true
  validates :title, length: { maximum:25, minimum: 5}
  validates :body, presence: true
  validates :body, length: { minimum: 5}
end
