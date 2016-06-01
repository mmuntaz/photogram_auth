class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  validates :username, :presence => true, :uniqueness => true

  has_many :photos
  has_many :comments
  has_many :likes
  has_many :liked_photos, :through => :likes, :source => :photo


  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
