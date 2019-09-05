class CreateSourceFiles < ActiveRecord::Migration[6.0]
  def change
    create_table :source_files do |t|
      t.string :name
      t.references :library, null: false, foreign_key: true

      t.timestamps
    end
  end
end
