class Person < ApplicationRecord

  before_save { self.email = email.downcase }
  validates :name, presence: true
  validates :email, presence: true, format: { with: URI::MailTo::EMAIL_REGEXP } 
  validates :age, presence: true, numericality: { only_integer: true }

  has_many :articles
  has_secure_password
end