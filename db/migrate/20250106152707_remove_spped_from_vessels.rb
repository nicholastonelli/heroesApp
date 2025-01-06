class RemoveSppedFromVessels < ActiveRecord::Migration[8.0]
  def change
    remove_column :vessels, :spped, :integer
  end
end
