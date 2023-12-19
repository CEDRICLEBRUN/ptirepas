class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :recipes, dependent: :destroy
  has_many :friendships1, class_name: 'Friendship', foreign_key: 'user1_id'
  has_many :friendships2, class_name: 'Friendship', foreign_key: 'user2_id'

  has_many :friends, through: :friendships1, source: :user2
end
