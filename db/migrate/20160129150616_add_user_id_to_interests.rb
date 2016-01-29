class AddUserIdToInterests < ActiveRecord::Migration
  def change
    change_table :interests do |t|
      t.integer :user_id
    end
  end
end
