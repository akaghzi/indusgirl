class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :firstname
      t.string :middlename
      t.string :lastname
      t.string :phone
      t.string :address1
      t.string :address2
      t.string :city
      t.boolean :admin

      t.timestamps
    end
  end
end
