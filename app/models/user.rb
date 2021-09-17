class User < ApplicationRecord 
  validates :username, 
        :email_id, 
        presence:true, 
        length: {minimum: 4, maximum: 100}
        VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :username, 
      :email_id, 
      uniqueness:true
  validates :email_id, 
      format: {with:VALID_EMAIL_REGEX}
end