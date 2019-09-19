class System < ApplicationRecord
  validates :name, :description, :ip, presence: true, allow_blank: false
end
