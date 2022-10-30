class Cart < ApplicationRecord
  has_many :cartitems
  has_many :products, through: :cartitems 
  
  def total
    cartitems.inject(0) {|total, item| total += (item.qty*item.product.price) }
  end
    #has_many :cartitems, dependent: :destroy
end
