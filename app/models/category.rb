class Category < ApplicationRecord
  belongs_to :user, foreign_key: :user_id
  has_many :categories_transactions
  has_many :tansactions
  validates :name, presence: true

  def amount 
    0
  end
end
