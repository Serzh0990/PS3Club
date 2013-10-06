class CreateWishes < ActiveRecord::Migration
  def change
    create_table :wishes do |t|
      t.string :title
      t.text :text
      t.boolean :complete

      t.timestamps
    end
  end
end
