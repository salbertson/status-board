class CreateSubscriptions < ActiveRecord::Migration
  def change
    create_table :subscriptions do |t|
      t.integer :user_id, null: false
      t.string :name, null: false
    end

    add_index :subscriptions, [:user_id, :name], unique: true
  end
end
