class ProgramRelationship < ApplicationRecord
  belongs_to :parent, class_name: 'ProgramDummy', optional: true
  belongs_to :child , class_name: 'ProgramDummy', optional: true
end
