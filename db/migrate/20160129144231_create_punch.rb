class CreatePunch < ActiveRecord::Migration
  def change
    create_table :punches do |t|
      t.timestamps
    end
  end
end
