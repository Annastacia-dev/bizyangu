class AddSlugToStore < ActiveRecord::Migration[7.1]
  def change
    add_column :stores, :slug, :string
  end
end
