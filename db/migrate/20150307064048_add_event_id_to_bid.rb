class AddEventIdToBid < ActiveRecord::Migration
  def change
    add_column :bids, :event_id, :integer
  end
end
