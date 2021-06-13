class CreateReviews < ActiveRecord::Migration[6.1]
  def change
    create_table :reviews do |t|
      t.decimal :star
      t.string :review_message
      t.references :tv_series
      t.references :user
      t.timestamps
    end
  end
end
