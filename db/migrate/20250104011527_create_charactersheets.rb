class CreateCharactersheets < ActiveRecord::Migration[8.0]
  def change
    create_table :charactersheets do |t|
      t.string :name

      t.timestamps
    end
  end
end
