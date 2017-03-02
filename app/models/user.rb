class User < ApplicationRecord
  has_secure_password
  has_secure_token

  has_many :messages

  validates :username, presence: true, uniqueness: true
  validates :phone_number, presence: true, uniqueness: true

end
