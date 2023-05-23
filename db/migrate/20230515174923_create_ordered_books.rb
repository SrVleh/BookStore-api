class CreateOrderedBooks < ActiveRecord::Migration[7.0]
  def change
    create_table :ordered_books do |t|
      t.belongs_to :order
      t.belongs_to :book
      t.timestamps
    end
  end
end
