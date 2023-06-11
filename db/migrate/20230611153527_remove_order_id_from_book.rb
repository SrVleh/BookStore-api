class RemoveOrderIdFromBook < ActiveRecord::Migration[7.0]
  def change
    remove_column :books, :order_id
  end
end
