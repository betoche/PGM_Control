class DropPrograms < ActiveRecord::Migration[6.0]
  def change
    connection.execute 'drop table if exists programs'
  end
end
