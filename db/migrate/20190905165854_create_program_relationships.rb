class CreateProgramRelationships < ActiveRecord::Migration[6.0]
  def change
    create_table :program_relationships do |t|
      t.references :parent, null: false, foreign_key: true
      t.references :child, null: false, foreign_key: true

      t.timestamps
    end
  end
end
