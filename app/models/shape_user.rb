class ShapeUser < ApplicationRecord
  belongs_to :shape
  belongs_to :user
  belongs_to :launchpad
end
