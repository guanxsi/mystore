class CreateOrders < ActiveRecord::Migration
  def self.up
    create_table :orders do |t|
      t.string :email
      t.string :name
      t.string :phone
      t.date :date
      t.string :recievername
      t.string :recieverphone
      t.string :adress
      t.text :text

      t.timestamps
    end
  end

  def self.down
    drop_table :orders
  end
end
