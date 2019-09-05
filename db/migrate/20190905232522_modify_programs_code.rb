class ModifyProgramsCode < ActiveRecord::Migration[6.0]
  def change
    change_column_null  :programs, :code_id, true, 0
  end
end
