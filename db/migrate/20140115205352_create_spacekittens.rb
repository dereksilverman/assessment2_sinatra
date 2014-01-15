class CreateSpacekittens < ActiveRecord::Migration
  def up
  	  create_table :spacecats do |t|
      t.string :name
      t.string :home_planet
      t.string :tagline
      t.string :superpower
      t.timestamps
  	end
  end

  def down
  end
end
