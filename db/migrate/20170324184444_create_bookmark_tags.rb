class CreateBookmarkTags < ActiveRecord::Migration[5.0]
  def change
    create_table :bookmark_tags do |t|
      t.belongs_to :bookmark, foreign_key: true
      t.belongs_to :tag, foreign_key: true

      t.timestamps
    end
  end
end
