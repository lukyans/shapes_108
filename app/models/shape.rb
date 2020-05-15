class Shape < ApplicationRecord
  validates :name, presence: true
  validates :link, presence: true

  has_many :shape_user
  has_many :users, through: :shape_user

  scope :active_shapes, -> { where(default_status: true).order(created_at: :asc) }

  def self.shapes_to_add(current_user)
    added_shapes = ShapeUser.where(user_id: current_user).pluck(:shape_id)
    self.where.not(id: added_shapes)
  end

  def human_boolean(boolean)
    boolean ? 'Yes' : 'No'
  end
end
