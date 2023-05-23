class ChangeQuantityDefaultValue < ActiveRecord::Migration[7.0]
  def change
    change_column :ordered_books, :quantity, :integer, default: 1
  end
end
