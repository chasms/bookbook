class Bookmark < ApplicationRecord
  belongs_to :account
  has_many :bookmark_tags
  has_many :tags, through: :bookmarks
end
