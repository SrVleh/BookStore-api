class AddFinishedBoolToOrderedBooks < ActiveRecord::Migration[7.0]
  def change
    add_column :ordered_books, :order_completed, :boolean, default: false
  end
end
