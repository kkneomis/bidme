class AddFieldsToBids < ActiveRecord::Migration
  def change
    add_column :bids, :bidder_id, :integer
    add_column :bids, :customer_id, :integer
  end
end
