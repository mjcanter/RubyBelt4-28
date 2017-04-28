class User < ApplicationRecord
  has_secure_password

  EMAIL_REGEX = /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]+)\z/i
  has_many :shoes
  has_many :buyersellers, foreign_key: "user_id"
  has_many :buyers, through: :buyersellers


  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true, uniqueness: { case_sensitive: false }, format: { with: EMAIL_REGEX }
  validates :password, :presence => {:message => "Password can't be blank"}
  validates :password, length: { minimum: 8 }

end
