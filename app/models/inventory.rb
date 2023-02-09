class Inventory < ApplicationRecord
  belongs_to :user
  has_many :inventory_food

  validates :name, presence: true
end
