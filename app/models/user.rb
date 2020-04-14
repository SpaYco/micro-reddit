class User < ApplicationRecord
    validates :name, presence: true, uniqueness: { case_sensitive: false }, length: {maximum: 20}
    validates :email, presence: true, uniqueness: { case_sensitive: false },
    format: { with: ConstantData::VALID_EMAIL_REGEX }
    has_many :Post
    has_many :Comment
    
    
    
end
