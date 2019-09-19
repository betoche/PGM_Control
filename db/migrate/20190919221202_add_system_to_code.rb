class AddSystemToCode < ActiveRecord::Migration[6.0]
  def change
    add_reference :codes, :system, null: false, foreign_key: true, default: 0
  end
end
