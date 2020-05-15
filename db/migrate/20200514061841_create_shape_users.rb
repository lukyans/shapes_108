class CreateShapeUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :shape_users do |t|
      t.references :shape, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
