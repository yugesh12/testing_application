class AddNameToSubscriptions < ActiveRecord::Migration
  def change
    add_column :subscriptions, :name, :string
    add_index :subscriptions, :name
  end
end
