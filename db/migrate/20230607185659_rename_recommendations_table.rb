class RenameRecommendationsTable < ActiveRecord::Migration[7.0]
  def change
    def self.up
      rename_table :comments, :comments
    end

    def self.down
      rename_table :comments, :comments
    end
  end
end
