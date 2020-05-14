class CreateShapes < ActiveRecord::Migration[6.0]
  def change
    create_table :shapes do |t|
      t.string :name
      t.string :description
      t.string :color
      t.boolean :default_status
      t.string :link

      t.timestamps
    end
  end
end
