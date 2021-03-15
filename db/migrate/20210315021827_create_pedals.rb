class CreatePedals < ActiveRecord::Migration[6.1]
  def change
    create_table :pedals do |t|
      t.string :title
      t.integer :price
      t.text :description

      t.timestamps
    end
  end
end
