class CreatePrograms < ActiveRecord::Migration[6.0]
  def change
    create_table :programs do |t|
      t.string :member
      t.references :library, null: false, foreign_key: true
      t.references :source_file, null: false, foreign_key: true
      t.references :code, null: false, foreign_key: true
      t.boolean :is_sftp
      t.boolean :is_ready
      t.integer :transfers

      t.timestamps
    end
  end
end
