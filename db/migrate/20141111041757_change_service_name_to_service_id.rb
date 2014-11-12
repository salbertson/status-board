class ChangeServiceNameToServiceId < ActiveRecord::Migration
  def change
    rename_column :subscriptions, :name, :service_id
  end
end
