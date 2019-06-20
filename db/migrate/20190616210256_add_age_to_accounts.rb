class AddAgeToAccounts < ActiveRecord::Migration[5.2]
  def change
    add_column :accounts, :age, :string
  end
end
