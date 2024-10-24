class RenameUserShotToShotImage < ActiveRecord::Migration[7.2]
  def change
    rename_column :shots, :user_shot, :shot_image
  end
end
