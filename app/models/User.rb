class User < ApplicationRecord
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates_presence_of :email
  validates_uniqueness_of :email
  has_secure_password

  has_many :bills
  has_many :incomes
end