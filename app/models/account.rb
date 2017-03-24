class Account < ApplicationRecord
  has_secure_password
  has_many :bookmarks
  has_many :bookmark_tags, through: :bookmarks
  has_many :tags, through: :bookmark_tags 
end
