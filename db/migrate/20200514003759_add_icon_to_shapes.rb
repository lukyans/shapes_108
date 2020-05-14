class AddIconToShapes < ActiveRecord::Migration[6.0]
  def change
    add_column :shapes, :icon, :string
  end
end
