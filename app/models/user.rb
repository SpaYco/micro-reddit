class User < ApplicationRecord
  validates :name, presence: true, uniqueness: { case_sensitive: false }, length: { maximum: 20 }  
  validates :email, presence: true, uniqueness: { case_sensitive: false },  format: { with: URI::MailTo::EMAIL_REGEXP } 
  has_many :posts
end