class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.string :title
      t.text :description
      t.string :rating
      t.date :released_on
      t.decimal :total_gross
      t.string :duration
      t.string :image_file_name
      t.string :cast
      t.string :director

      t.timestamps null: false
    end
  end
end
