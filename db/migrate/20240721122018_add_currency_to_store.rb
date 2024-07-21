class AddCurrencyToStore < ActiveRecord::Migration[7.1]
  def change
    add_column :stores, :currency, :string, default: 'KES'
  end
end
