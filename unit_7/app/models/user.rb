class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         
  before_destroy :log_before_destroy
  after_destroy :log_after_destroy

  validates :name, presence: true
  validates :name, length: { maximum: 16, minimum: 2 }
  validates :name, uniqueness: true

  has_many :posts, dependent: :destroy
  has_many :comments, dependent: :destroy
  has_many :commented_posts, through: :comments, source: :commentable, source_type: :Post
  has_many :commented_users, through: :comments, source: :commentable, source_type: :User

  private
  def log_before_destroy
    Rails.logger.info "record with name = #{name} will be deleted soon"
  end

  def log_after_destroy
    Rails.logger.info "record with name = #{name} already deleted"
  end
end
