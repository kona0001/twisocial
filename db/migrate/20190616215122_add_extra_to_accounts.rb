class AddExtraToAccounts < ActiveRecord::Migration[5.2]
  def change
    add_column :accounts, :extra, :string
  end
end
