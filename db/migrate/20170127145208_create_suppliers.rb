class CreateSuppliers < ActiveRecord::Migration[5.0]
  def change
    create_table :suppliers do |t|
      t.string :name
      t.string :contact_name
      t.string :phone
      t.string :address1
      t.string :address2
      t.string :city

      t.timestamps
    end
  end
end
