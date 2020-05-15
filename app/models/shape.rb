class Shape < ApplicationRecord
  has_many :shape_user
  has_many :users, through: :shape_user

  scope :active_shapes, -> { where(default_status: true).order(created_at: :asc) }
end
