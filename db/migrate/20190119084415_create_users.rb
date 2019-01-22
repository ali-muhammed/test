class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name
      t.string :surname
      t.string :patronymic
      t.string :phone
      t.date :birth_date
      t.string :skype
      t.string :second_phone
      t.string :passport_id
      t.string :passport_self_id
      t.date :passport_date
      t.string :passport_organization
      t.string :gender

      t.timestamps
    end
  end
end
