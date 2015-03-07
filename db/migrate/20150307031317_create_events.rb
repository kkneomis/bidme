class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.string :description
      t.string :deadline
      t.string :image
      t.string :category

      t.timestamps
    end
  end
end
