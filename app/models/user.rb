class User < ApplicationRecord
  has_many :starts, foreign_key: :author_id, dependent: :destroy
  has_many :clusters, dependent: :destroy
end
