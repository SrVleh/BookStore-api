class RemoveOrderCompleteFromOrderedBooks < ActiveRecord::Migration[7.0]
  def change
    remove_column :ordered_books, :order_completed
  end
end
