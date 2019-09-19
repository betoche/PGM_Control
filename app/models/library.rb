class Library < ApplicationRecord
  validates :name, :system_id, presence: true, allow_blank: false
end
