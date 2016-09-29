class CreateChickens < ActiveRecord::Migration
  def change
    create_table :chickens do |t|
      t.string :name
      t.string :type

      t.timestamps null: false
    end
  end
end
