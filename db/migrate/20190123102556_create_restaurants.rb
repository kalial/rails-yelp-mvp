class CreateRestaurants < ActiveRecord::Migration[5.2]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :adress
      t.string :phone_number
      t.string :categegory

      t.timestamps
    end
  end
end
