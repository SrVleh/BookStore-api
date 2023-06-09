class RemoveCreatorColumn < ActiveRecord::Migration[7.0]
  def change
    remove_column :comments, :creator_id
  end
end
