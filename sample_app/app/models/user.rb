class User < ApplicationRecord
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

  validates :name, presence: true, length: {maximum:50},
            uniqueness: true
  validates :email, presence: true, length: {maximum:255},
            format: {with:VALID_EMAIL_REGEX}, uniqueness: {case_sensitive: false}

  has_secure_password#直前に書かないとエラーになる。
  validates :password, presence: true, length: { minimum: 6 }


  #before_save {self.email = self.email.downcase}
  before_save {self.email.downcase!}

end
