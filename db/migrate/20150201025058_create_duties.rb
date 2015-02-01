class CreateDuties < ActiveRecord::Migration
  def change
    create_table :duties do |t|
      t.string :name
      t.integer :players
      t.integer :level
      t.integer :time_limit
      t.string :category
      t.integer :sync_level

      t.timestamps null: false
    end
  end
end
