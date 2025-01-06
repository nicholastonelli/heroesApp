class AddHeavyMountsToVessels < ActiveRecord::Migration[8.0]
  def change
    add_column :vessels, :heavy_mounts, :integer
  end
end
