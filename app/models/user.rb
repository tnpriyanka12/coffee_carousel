class User < ApplicationRecord
  has_many :drinks

  has_secure_password

  PASSWORD_FORMAT = /\A
  (?=.{8,})          # Must contain 8 or more characters
  (?=.*\d)           # Must contain a digit
  (?=.*[a-z])        # Must contain a lower case character
  (?=.*[A-Z])        # Must contain an upper case character
  /x
  EMAIL_FORMAT = /(\w.*)@(\w.*)[.]com/

  validates :email, presence: true, uniqueness: true,
  format: { with: EMAIL_FORMAT , message: "Please provide valid email" }

  validates :name,  presence: true, uniqueness: true, length: { minimum: 2 }

  validates :password,
  length: { in: 6..20 },
  format: { with: PASSWORD_FORMAT  },
  confirmation: true
  validates_presence_of :password, on: :create


  validates :phone_number, format: { with: /\d{3}-\d{3}-\d{4}/, message: "Phone Number format: 000-000-0000" }
end
