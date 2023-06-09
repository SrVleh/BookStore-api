class AddAssociationsToComments < ActiveRecord::Migration[7.0]
  def change
    add_reference :comments, :user, foreign_key: { to_table: :users }
    add_reference :comments, :book, foreign_key: { to_table: :books }
  end
end
