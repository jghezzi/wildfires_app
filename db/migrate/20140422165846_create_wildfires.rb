class CreateWildfires < ActiveRecord::Migration
  def change
    create_table :wildfires do |t|
      t.integer :category
      t.integer :size
      t.text :status
      t.integer :location_id

      t.timestamps
    end
  end
end
