class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.references :user, index: true
      t.references :brew, index: true
      t.string :post

      t.timestamps
    end
  end
end
