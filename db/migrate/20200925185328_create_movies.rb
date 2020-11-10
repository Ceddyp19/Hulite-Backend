class CreateMovies < ActiveRecord::Migration[6.0]
  def change
    create_table :movies do |t|
      t.string :title
      t.string :description
      t.string :genre
      t.string :posterUrl
      t.string :trailerUrl
      t.boolean :isMovie
      t.integer :dateAired
    end
  end
end
