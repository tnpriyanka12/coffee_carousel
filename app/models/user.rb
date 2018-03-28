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
  format: { with: PASSWORD_FORMAT , message: "Need atleast 8 characters, 1 digit, 1 Uppercase Letter and 1 Lower case letter" },
  confirmation: true
end
