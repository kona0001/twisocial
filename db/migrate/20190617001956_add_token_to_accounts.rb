class AddTokenToAccounts < ActiveRecord::Migration[5.2]
  def change
    add_column :accounts, :token, :string
  end
end
