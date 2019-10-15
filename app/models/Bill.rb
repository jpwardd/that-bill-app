class Bill < ApplicationRecord
  validates :name, presence: true
  validates :category, presence: true
  validates :amount, presence: true
  validates :due_date, presence: true
  validates :amount, presence: true

  belongs_to :user
end