class AddSesctionHardnessToVessels < ActiveRecord::Migration[8.0]
  def change
    add_column :vessels, :section_hardness, :integer
  end
end
