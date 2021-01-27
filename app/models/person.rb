class Person < ApplicationRecord
  validates :name, presence: true
  validates :email, presence: true, format: { with: URI::MailTo::EMAIL_REGEXP } 
  validates :age, presence: true, numericality: { only_integer: true }
end