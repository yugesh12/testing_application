class CreateDienstens < ActiveRecord::Migration
  def change
    create_table :dienstens do |t|
      t.string :title

      t.timestamps null: false
    end
  end
end