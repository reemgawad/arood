class AddMnemonicToMeters < ActiveRecord::Migration[6.1]
  def change
    add_column :meters, :mnemonic, :string
  end
end
