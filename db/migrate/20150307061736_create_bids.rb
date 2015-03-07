class CreateBids < ActiveRecord::Migration
  def change
    create_table :bids do |t|
      t.decimal :price

      t.timestamps
    end
  end
end
