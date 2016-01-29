class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.string :message
      t.integer :from
      t.integer :to

      t.timestamps null: false
    end
  end
end
