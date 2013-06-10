class CreateYeasts < ActiveRecord::Migration
  def change
    create_table :yeasts do |t|
      t.string :name
      t.references :brew, index: true

      t.timestamps
    end
  end
end
