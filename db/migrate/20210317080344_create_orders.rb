class CreateOrders < ActiveRecord::Migration[6.1]
  def change
    create_table :orders do |t|
      t.references :user, null: false, foreign_key: true
      t.references :pedal, null: false, foreign_key: true
      t.text :address
      t.integer :postcode
      t.string :city
      t.string :state
      t.string :country

      t.timestamps
    end
  end
end
