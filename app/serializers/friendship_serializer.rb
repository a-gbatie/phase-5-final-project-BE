class FriendshipSerializer < ActiveModel::Serializer
  attributes :id
  has_one :user_a_id
  has_one :user_b_id
end
