class CreateActors < ActiveRecord::Migration[6.1]
  def change
    create_table :actors do |t|
      t.string :name, uniq: true

      t.timestamps
    end
  end
end
