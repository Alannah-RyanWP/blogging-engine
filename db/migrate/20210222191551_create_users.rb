class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :FirstName
      t.string :SecondName
      t.string :Email
      t.string :Password

      t.timestamps
    end
  end
end
