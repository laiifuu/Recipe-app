class InventoryFood < ApplicationRecord
    belongs_to :inventories
    belongs_to :food
end
