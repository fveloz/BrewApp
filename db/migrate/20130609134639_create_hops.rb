class CreateHops < ActiveRecord::Migration
  def change
    create_table :hops do |t|
      t.string :name
      t.references :brew, index: true

      t.timestamps
    end
  end
end
