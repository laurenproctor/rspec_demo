class AddDescriptionToFruits < ActiveRecord::Migration
  def change
    add_column :fruits, :description, :text
  end
end
