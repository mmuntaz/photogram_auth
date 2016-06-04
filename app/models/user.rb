class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable

  # username: presence, uniqueness
  validates :username, :presence => true, :uniqueness => true


  devise :database_authenticatable, :registerable,
  :recoverable, :rememberable, :trackable, :validatable

  has_many :photos
  has_many :comments
  has_many :likes
  has_many :liked_photos, :through => :likes, :source => :photo



end
