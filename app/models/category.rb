class Category < ApplicationRecord
  belongs_to :user, foreign_key: :user_id
  has_many :categories_transacs, dependent: :delete_all
  has_many :transacs, through: :categories_transacs
  validates :name, presence: true

  def amount 
    result = 0 
    transacs.each { |t| result += t.amount } 
    result 
  end
end
