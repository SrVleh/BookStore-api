class AddOrderCompleteToOrders < ActiveRecord::Migration[7.0]
  def change
    add_column :orders, :order_completed, :boolean, default: false
  end
end
