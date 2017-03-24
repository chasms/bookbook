class CreateBookmarks < ActiveRecord::Migration[5.0]
  def change
    create_table :bookmarks do |t|
      t.string :name
      t.text :url
      t.belongs_to :account, foreign_key: true

      t.timestamps
    end
  end
end
