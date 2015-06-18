class Product < ActiveRecord::Base
  belongs_to :supplier
  has_many :orders, through: :carted_products
  has_many :product_images
  has_many :categorized_products
  has_many :categories, through: :categorized_products
  has_many :carted_products

  SALES_TAX = 0.09
  def friendly_updated_at
    updated_at.strftime("%b %d, %Y")
  end

  def friendly_prep_time
    hours = prep_time / 60
    minutes = prep_time % 60
    result = ""
    result += "#{hours} hours"
    "#{hours} hours, #{minutes}, minutes"
  end
  def sale_message
    if price < 5
      "Discount Item!"
    else
      "On Sale!"
    end 
  end
  def tax
    price * SALES_TAX
  end

  def total
    price + tax
  end
end
