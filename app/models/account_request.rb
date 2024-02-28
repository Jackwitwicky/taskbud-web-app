class AccountRequest < ApplicationRecord

  validates :name, presence: true
  validates :email, presence: true
  validates :request_type, presence: true
end
