class ChangeRecommendationReferences < ActiveRecord::Migration[7.0]
  def change
    remove_reference :comments, :creator_id
    add_reference :comments, :user, foreign_key: { to_table: :users }
  end
end
