class AddPunchUser < ActiveRecord::Migration
  def change
    add_column :punches, :user_id, :integer
    add_column :punches, :user_punched, :integer
  end
end
