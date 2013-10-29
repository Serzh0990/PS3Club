class CreatePrices < ActiveRecord::Migration
  def change
    create_table :prices do |t|
      t.string :title
      t.text :description
      t.integer :cost

      t.timestamps
    end
  end
end
