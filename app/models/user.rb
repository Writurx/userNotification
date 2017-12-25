class User < ApplicationRecord
  has_and_belongs_to_many :notifications

  validates :firstName, length: {in: 2..20}
  validates :lastName, length: {in: 2..20}
  validates :phone, if: -> { phone.present? }, format:{ :with => /[0-9\-()+]{6,16}/}
  validates :email, if: -> { email.present? }, format:{ :with => /@/}
  validates :phone, presence: { if: ->{email.blank?} }
  validates :email, presence: { if: ->{phone.blank?} }
  validates :sendToSms, presence: { if: ->{sendToMail.blank?}}
  validates :sendToMail, presence: { if: ->{sendToSms.blank?}}
end
