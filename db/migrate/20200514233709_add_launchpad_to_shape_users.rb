class AddLaunchpadToShapeUsers < ActiveRecord::Migration[6.0]
  def change
    add_reference :shape_users, :launchpad, null: false, foreign_key: true
  end
end
