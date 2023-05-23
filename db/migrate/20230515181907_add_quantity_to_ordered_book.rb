class AddQuantityToOrderedBook < ActiveRecord::Migration[7.0]
  def change
    add_column :ordered_books, :quantity, :integer
  end
end
