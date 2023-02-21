class Start < ApplicationRecord
  belongs_to :author, class_name: 'User'
  has_many :associations, dependent: :destroy
  has_many :clusters, through: :associations

  validates :name, presence: true, length: { maximum: 50 }
  validates :amount, presence: true, numericality: { greater_than: 0 }
end
