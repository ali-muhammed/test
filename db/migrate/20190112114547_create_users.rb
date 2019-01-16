class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :type
      t.string :first_name
      t.string :surname
      t.string :patronymic
      t.string :phone_number
      t.string :second_phone_number

      t.timestamps
    end
  end
end
