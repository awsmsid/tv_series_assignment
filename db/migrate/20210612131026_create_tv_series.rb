class CreateTvSeries < ActiveRecord::Migration[6.1]
  def change
    create_table :tv_series do |t|
      t.string :name
      t.integer :number_of_seasons
      t.date :date_of_first_release
      t.references :country
      t.references :genre
      t.timestamps
    end
  end
end
