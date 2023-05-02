class RenamePicColumn < ActiveRecord::Migration[7.0]
  def change
    rename_column :users, :profile_pic_link, :profile_pic
  end
end
