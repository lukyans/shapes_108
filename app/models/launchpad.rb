class Launchpad < ApplicationRecord
  has_many :shape_users, dependent: :destroy
  has_many :shapes, through: :shape_users
end
