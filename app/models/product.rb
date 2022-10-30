class Product < ApplicationRecord
  has_one :cartitem, dependent: :destroy
  
  validates :name, presence: true
  validates :price, presence: true, numericality: { greater_than: 1, only_integer: true }
    #has_one :cartitem, dependent: :destroy
end
