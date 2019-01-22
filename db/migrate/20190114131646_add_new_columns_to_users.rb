class AddNewColumnsToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :passport_id, :string
    add_column :users, :passport_self_id, :string
    add_column :users, :passport_organization, :string
    add_column :users, :passport_date, :date
    add_column :users, :birth_date, :date
    add_column :users, :skype, :string
    add_column :users, :gender, :string
  end
end
