class AddFirePicsToWildfiresApp < ActiveRecord::Migration
  def change
    add_column :wildfires, :fire_pic, :string
  end
end
