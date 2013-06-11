class AddUserIdToBrews < ActiveRecord::Migration
  def change
    add_reference :brews, :user, index: true
  end
end
