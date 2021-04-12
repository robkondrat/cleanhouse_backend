class DeleteUserFromRooms < ActiveRecord::Migration[6.0]
  def change
    remove_column :rooms, :user, :string
  end
end
