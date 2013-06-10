class CreateFermentables < ActiveRecord::Migration
  def change
    create_table :fermentables do |t|
      t.string :name
      t.references :brew, index: true

      t.timestamps
    end
  end
end
