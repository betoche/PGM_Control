class RelatedProgram < ApplicationRecord
    belongs_to :parent, class_name: 'Program', optional: true
    belongs_to :child, class_name: 'Program', optional: true

    def name
        "#{self.parent.member} - #{self.child.member}"
    end
end
