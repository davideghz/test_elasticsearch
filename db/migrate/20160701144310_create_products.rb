class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.decimal :lat
      t.decimal :lon

      t.timestamps null: false
    end
  end
end
