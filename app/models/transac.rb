class Transac < ApplicationRecord
  belongs_to :user, class_name: 'User', foreign_key: :user_id
  has_many :category_transacs, dependent: :delete_all
  has_many :categories, through: :category_transacs
  validates :amount, presence: true
  validates :name, presence: true
end
