class User < ApplicationRecord
  validates :name, presence: true , length: { maximum: 15 }
  EMAIL_RULE = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\Z/
  validates :email, presence: true , format: { with: EMAIL_RULE }
  #validates :password, presence: true
  #validates :password, length: { in: 8..32 }
  PASSWORD_RULE = /\A(?=.*?[a-z])(?=.*?[A-Z])(?=.*?[\d])\w{8,32}\Z/
  validates :password, presence: true , format: { with: PASSWORD_RULE}
  
  has_secure_password
end