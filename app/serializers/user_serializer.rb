class UserSerializer < ActiveModel::Serializer
  attributes :id, :email, :username, :posts
end
