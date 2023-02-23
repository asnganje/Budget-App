class Cluster < ApplicationRecord
  belongs_to :user, class_name: 'User'
  has_many :associations, dependent: :destroy
  has_many :starts, through: :associations

  validates :name, presence: true, length: { maximum: 50 }
end
