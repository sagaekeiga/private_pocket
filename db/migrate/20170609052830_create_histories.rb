class CreateHistories < ActiveRecord::Migration[5.0]
  def change
    create_table :histories do |t|
      t.string :name
      t.string :event
      t.string :url
      t.string :description
      t.integer :page
      t.integer :stage
      t.integer :result,              default: 0
      t.boolean :status,              default: "false"

      t.timestamps
    end
  end
end
