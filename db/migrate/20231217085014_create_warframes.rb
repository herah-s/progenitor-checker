class CreateWarframes < ActiveRecord::Migration[7.1]
  def change
    create_table :warframes do |t|
      t.string :name
      t.string :element
      t.integer :release_order

      t.timestamps
    end
  end
end
