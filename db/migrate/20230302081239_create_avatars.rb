class CreateAvatars < ActiveRecord::Migration
  def change
    create_table :avatars do |t|
      t.string :user_id
      t.string :user_name
      t.string :avatar
      t.timestamps
    end
  end
end
