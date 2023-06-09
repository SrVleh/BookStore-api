class AddFieldsAndAssociationsToRecommendations < ActiveRecord::Migration[7.0]
  def change
    add_reference :comments, :creator, foreign_key: { to_table: :users }
    add_reference :comments, :book, foreign_key: { to_table: :books }
    add_column :comments, :title, :string
    add_column :comments, :body, :string
  end
end
