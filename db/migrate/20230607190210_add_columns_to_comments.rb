class AddColumnsToComments < ActiveRecord::Migration[7.0]
  def change
    add_column :comments, :title, :string
    add_column :comments, :body, :string
    drop_table :recommendations
  end
end
