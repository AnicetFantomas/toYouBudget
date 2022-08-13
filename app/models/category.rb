class Category < ApplicationRecord
  belongs_to :user, foreign_key: :user_id
  has_many :categories_transacs, dependent: :delete_all
  has_many :transacs, through: :categories_transacs
  validates :name, presence: true

  def amount 
    0
  end
end
