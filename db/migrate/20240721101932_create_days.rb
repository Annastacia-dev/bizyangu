class CreateDays < ActiveRecord::Migration[7.1]
  def change
    create_table :days, id: :uuid do |t|
      t.datetime :date

      t.timestamps
    end
  end
end
