class AddLightMountsToVessels < ActiveRecord::Migration[8.0]
  def change
    add_column :vessels, :light_mounts, :integer
  end
end
