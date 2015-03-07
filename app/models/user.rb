class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  
  validates :name, presence: true
  has_many :events, dependent: :destroy
  has_many :bids, dependent: :destroy  
  mount_uploader :image, ImageUploader
end
