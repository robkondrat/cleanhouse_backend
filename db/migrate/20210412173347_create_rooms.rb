class CreateRooms < ActiveRecord::Migration[6.0]
  def change
    create_table :rooms do |t|
      t.integer :number
      t.integer :floor
      t.string :type
      t.string :status
      t.string :user

      t.timestamps
    end
  end
end
