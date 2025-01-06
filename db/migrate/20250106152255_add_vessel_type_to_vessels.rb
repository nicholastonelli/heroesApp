class AddVesselTypeToVessels < ActiveRecord::Migration[8.0]
  def change
    add_column :vessels, :vessel_type, :string
  end
end
