class DropTotalPriceFromOrders < ActiveRecord::Migration
  def change
    remove_column :orders, :total_price, precision: 8, scale: 2
  end
end
