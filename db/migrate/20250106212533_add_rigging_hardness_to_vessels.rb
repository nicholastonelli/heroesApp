class AddRiggingHardnessToVessels < ActiveRecord::Migration[8.0]
  def change
    add_column :vessels, :rigging_hardness, :integer
  end
end
