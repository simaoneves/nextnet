class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.integer :birthday
      t.integer :birthmonth
      t.integer :birthyear
      t.string :email
      t.string :password_digest
      t.boolean :online

      t.timestamps null: false
    end
  end
end
