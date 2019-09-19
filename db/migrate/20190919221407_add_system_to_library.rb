class AddSystemToLibrary < ActiveRecord::Migration[6.0]
  def change
    add_reference :libraries, :system, null: false, foreign_key: true, default: 0
  end
end
