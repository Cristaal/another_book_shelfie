class CreateAuthorsTitles < ActiveRecord::Migration
  def change
    create_table :authors_titles, id: false do |t|
      t.integer :author_id
      t.integer :title_id

    end
  end
end
