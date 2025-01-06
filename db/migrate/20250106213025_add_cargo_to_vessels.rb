class AddCargoToVessels < ActiveRecord::Migration[8.0]
  def change
    add_column :vessels, :cargo, :integer
  end
end
