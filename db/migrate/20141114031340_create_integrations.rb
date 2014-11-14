class CreateIntegrations < ActiveRecord::Migration
  def change
    create_table :integrations do |t|
      t.timestamps
      t.integer :user_id, null: false
      t.string :integration_id, null: false
      t.json :settings
    end
  end
end
