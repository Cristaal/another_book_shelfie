class AddGenreIdToBooksTable < ActiveRecord::Migration
  def change
    add_column :titles, :genre_id, :integer
  end
end
