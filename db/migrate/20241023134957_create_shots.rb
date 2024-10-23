class CreateShots < ActiveRecord::Migration[7.2]
  def change
    create_table :shots do |t|
      t.string :title
      t.text :description
      t.references :user
      t.string :user_shot

      t.timestamps
    end
  end
end
