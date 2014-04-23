class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string :state
      t.string :county
      t.string :agency

      t.timestamps
    end
  end
end
