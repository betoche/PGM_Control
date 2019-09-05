class CreateProgramDummies < ActiveRecord::Migration[6.0]
  def change
    create_table :program_dummies do |t|
      t.string :name

      t.timestamps
    end
  end
end
