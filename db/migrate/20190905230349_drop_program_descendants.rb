class DropProgramDescendants < ActiveRecord::Migration[6.0]
  def change
    connection.execute 'drop table if exists program_descendants'
  end
end
