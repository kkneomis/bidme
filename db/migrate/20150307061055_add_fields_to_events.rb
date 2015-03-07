class AddFieldsToEvents < ActiveRecord::Migration
  def change
    add_column :events, :highbid, :decimal
    add_column :events, :lowbid, :decimal
  end
end
