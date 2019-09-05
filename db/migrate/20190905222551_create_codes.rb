class CreateCodes < ActiveRecord::Migration[6.0]
  def change
    create_table :codes do |t|
      t.string :code
      t.string :operation
      t.string :description
      t.string :input
      t.string :output
      t.string :home_dir
      t.boolean :daily

      t.timestamps
    end
  end
end
