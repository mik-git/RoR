class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  before_destroy :log_before_destory
  after_destroy :log_after_destory
  has_many :posts, dependent: :destroy
  has_many :comments, dependent: :destroy
  has_many :commented_posts, through: :comments, source: :commentable, source_type: :User
  has_many :commented_posts, through: :comments, source: :commentable, source_type: :Post
  validates :name, presence: true
  validates_length_of :name, minimum: 2, maximum: 22
  validates :name, uniqueness: true
  private
  def log_before_destory
    Rails.logger.info "##### Собираемся удалить пользователя #{@name} #####"
    end
  def log_after_destory
    Rails.logger.info "########### Пользователь #{@name} удален ###########"
  end
end
