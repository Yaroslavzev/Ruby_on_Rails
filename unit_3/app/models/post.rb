class Post < ApplicationRecord
  belongs_to :user
  validates :title, presence: true
  validates :title, lenght: { maximum:25, minimum: 5}
  validates :body, presence: true
  validates :body, lenght: { minimum: 5}
end
