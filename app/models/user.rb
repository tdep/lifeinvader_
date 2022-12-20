class User < ApplicationRecord
  validates :name, :email, :username, presence: true
  validates :age, numericality: { greater_than: 16 }
  # We can view the validation errors by calling user.errors.full_messages
  # after any attempt to save the user object, or by calling user.valid?
  has_many :posts
  has_many :comments
end
