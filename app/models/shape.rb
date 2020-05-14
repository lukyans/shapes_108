class Shape < ApplicationRecord
   scope :active_shapes, -> { where(default_status: true) }
   scope :inactive_shapes, -> { where(default_status: false) }
end
