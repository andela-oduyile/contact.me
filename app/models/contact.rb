class Contact < ApplicationRecord
  belongs_to :user
  has_many :email_addresses
  has_many :phone_numbers
end
