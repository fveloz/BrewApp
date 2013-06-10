class CreateBrews < ActiveRecord::Migration
  def change
    create_table :brews do |t|
      t.string :name
      t.text :story
      t.text :walkthrough

      t.timestamps
    end
  end
end
