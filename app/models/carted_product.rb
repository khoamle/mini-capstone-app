class CartedProduct < ActiveRecord::Base
  belongs_to :user
  belongs_to :product
  belongs_to :order

  validates :quantity, presence: true, numericality: { greater_than: 0, only_integer: true  }

  def subtotal
    quantity * product.price
  end

end
