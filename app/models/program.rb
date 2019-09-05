class Program < ApplicationRecord
  belongs_to :library
  belongs_to :source_file
  belongs_to :code
end
