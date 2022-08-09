class Category < ApplicationRecord
  belongs_to :user, foreign_key: :user_id
  has_many :categories_transactions, dependent: :delete_all
  has_many :tansactions, through: :categories_transactions
  validates :name, presence: true

  def amount 
    0
  end
end
