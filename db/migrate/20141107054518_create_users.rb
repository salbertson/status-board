class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.timestamps
      t.string :email_address, null: false
    end

    add_index :users, :email_address, unique: true
  end
end
