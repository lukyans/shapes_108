class CreateLaunchpads < ActiveRecord::Migration[6.0]
  def change
    create_table :launchpads do |t|

      t.timestamps
    end
  end
end
