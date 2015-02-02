class CreateDuties < ActiveRecord::Migration
  def change
    create_table :duties do |t|
      t.string :category
      t.string :name
      t.string :href
      t.integer :min_level
      t.integer :min_item_level
      t.integer :sync_level
      t.integer :time_limit
      t.integer :party_size
      t.integer :alliance_size

      t.timestamps null: false
    end
  end
end
