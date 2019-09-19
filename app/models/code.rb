class Code < ApplicationRecord
  validates :code, :operation, :description, :home_dir, presence: true, allow_blank: false

  def name
    "#{self.code}"
  end
end
