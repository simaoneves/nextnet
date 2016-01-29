class AddPunchBack < ActiveRecord::Migration
  def change
    add_column :punches, :punched_back, :integer
  end
end
