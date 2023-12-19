class Friendship < ApplicationRecord
  belongs_to :user1, class_name: 'User', foreign_key: 'user1_id'
  belongs_to :user2, class_name: 'User', foreign_key: 'user2_id'

  enum status: { pending: 'pending', accepted: 'accepted', rejected: 'rejected' }
end
