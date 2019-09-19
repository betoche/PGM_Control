class Program < ApplicationRecord
  belongs_to :library
  belongs_to :source_file
  belongs_to :code, optional: true

  has_many :parent_programs, class_name: 'RelatedProgram', foreign_key: :child_id
  has_many :parents, through: :parent_programs, source: :parent
  has_many :child_programs, class_name: 'RelatedProgram', foreign_key: :parent_id
  has_many :children, through: :child_programs, source: :child

  validates :member, :library_id, :source_file_id, presence: true, allow_blank: false

  def name
    "#{self.member}"
  end
end
