class CreateVessels < ActiveRecord::Migration[8.0]
  def change
    create_table :vessels do |t|
      t.string :name
      t.string :type
      t.string :propulsion
      t.string :maneuverablility
      t.string :size
      t.integer :seaworthiness
      t.integer :shiphandling
      t.integer :overall_ac
      t.integer :hull_sections
      t.integer :sink
      t.integer :section_hp
      t.integer :section_ac
      t.integer :rigging_sections
      t.integer :rigging_hp
      t.string :ram
      t.integer :mounts
      t.string :space
      t.string :height
      t.integer :watch
      t.integer :complement
      t.integer :speed
      t.integer :cost
      t.integer :rowers
      t.string :vessel_type
      t.timestamps
    end
  end
end
