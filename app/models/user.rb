class User < ActiveRecord::Base

  has_many :interests
  
  #valid formats
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

  validates :name, presence: true
  validates :email, presence: true, 
            uniqueness: {case_sensitive: false},
            format: { with:VALID_EMAIL_REGEX }
  validates :birthday, presence: true
  validates :password, confirmation: true

  has_secure_password
end
