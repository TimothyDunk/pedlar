class AddUserIdToPedals < ActiveRecord::Migration[6.1]
  def change
    add_column :pedals, :user_id, :integer
  end
end
