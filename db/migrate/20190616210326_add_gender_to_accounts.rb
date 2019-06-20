class AddGenderToAccounts < ActiveRecord::Migration[5.2]
  def change
    add_column :accounts, :gender, :string
  end
end
