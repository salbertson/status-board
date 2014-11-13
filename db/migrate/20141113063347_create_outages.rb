class CreateOutages < ActiveRecord::Migration
  def change
    create_table :outages do |t|
      t.timestamps
      t.string :service_id
    end
  end
end
