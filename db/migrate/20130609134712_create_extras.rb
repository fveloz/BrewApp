class CreateExtras < ActiveRecord::Migration
  def change
    create_table :extras do |t|
      t.string :name
      t.references :brew, index: true

      t.timestamps
    end
  end
end
