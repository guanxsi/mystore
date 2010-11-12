class AddItemIdToOrders < ActiveRecord::Migration
  def self.up
    add_column :orders, :item_id, :integer
  end

  def self.down
    remove_column :orders, :item_id
  end
end
