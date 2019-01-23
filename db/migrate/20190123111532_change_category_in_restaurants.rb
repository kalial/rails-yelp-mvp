class ChangeCategoryInRestaurants < ActiveRecord::Migration[5.2]
  def change
   rename_column :restaurants, :categegory, :category
  end
end
