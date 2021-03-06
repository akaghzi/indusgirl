class CreateCategories < ActiveRecord::Migration[5.0]
  def change
    create_table :categories do |t|
      t.string :name
      t.integer :parent_id
      t.boolean :active
      t.integer :display_order

      t.timestamps
    end
  end
end
