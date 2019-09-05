class ProgramDummy < ApplicationRecord
    has_many :parents_programs , class_name: 'ProgramRelationship', foreign_key: :parent_id
    has_many :parents          , through:    :parents_programs   ,  source:      :parent
    has_many :children_programs, class_name: 'ProgramRelationship', foreign_key: :child_id
    has_many :children         , through:    :children_programs   , source:      :child
end
