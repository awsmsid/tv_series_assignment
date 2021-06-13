class CreateProjects < ActiveRecord::Migration[6.1]
  def change
    create_table :projects do |t|
      t.string :shoot_location
      t.belongs_to :tv_series
      t.belongs_to :actor
      t.timestamps
    end
  end
end
