class CreateSystems < ActiveRecord::Migration[6.0]
  def change
    create_table :systems do |t|
      t.string :name
      t.string :description
      t.string :ip

      t.timestamps
    end
  end
end
