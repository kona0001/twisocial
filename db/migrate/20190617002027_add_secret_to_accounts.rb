class AddSecretToAccounts < ActiveRecord::Migration[5.2]
  def change
    add_column :accounts, :secret, :string
  end
end
