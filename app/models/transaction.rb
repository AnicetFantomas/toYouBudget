class Transaction < ApplicationRecord
  belongs_to :user, foreign_key: :user_id
  has_many :categories_transactions, dependent: :delete_all
  validates :amount, presence:true, through: :categories_transactions
  validates :name, presence: true
end
