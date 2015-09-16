class Album < ActiveRecord::Migration
  def change
    create_table :albums do |t|
      t.string :name, null: false
      t.belongs_to :artist, null: false

      t.timestamps null: false
    end
  end
end
