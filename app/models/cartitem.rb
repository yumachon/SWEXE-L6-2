class Cartitem < ApplicationRecord
    belongs_to :product
    belongs_to :cart
    #belongs_to :quantity
end
