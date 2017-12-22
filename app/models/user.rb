class User < ApplicationRecord
  has_and_belongs_to_many :notifications

  validates :firstName, length: {in: 2..20}
  validates :lastName, length: {in: 2..20}
  validates :phone, format: { with: /((8|\+3)[\- ]?)?(\(?\d{3}\)?[\- ]?)?[\d\- ]{7,10}/, message: "incorrect phone" }
  validates :email, format: { with: /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i, message: "incorrect email" }
end
