class Payment < ApplicationRecord
  has_many :orders, dependent: :destroy
end
