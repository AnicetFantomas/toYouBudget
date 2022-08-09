class Transaction < ApplicationRecord
  belongs_to :user, foreign_key: :user_id
  has_many :categories_transactions
  validates :amount, presence:true
  validates :name, presence: true
end
