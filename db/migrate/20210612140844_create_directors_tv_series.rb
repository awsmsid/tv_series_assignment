class CreateDirectorsTvSeries < ActiveRecord::Migration[6.1]
  def change
    create_table :directors_tv_series do |t|
    	t.belongs_to :director
      t.belongs_to :tv_series
    end
  end
end
