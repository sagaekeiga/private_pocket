class CreatePockets < ActiveRecord::Migration
  def change
    create_table :pockets do |t|
      t.text :url

      t.timestamps null: false
    end
  end
end
