class Calendar < ApplicationRecord
  has_many :events, dependent: :destroy
end
