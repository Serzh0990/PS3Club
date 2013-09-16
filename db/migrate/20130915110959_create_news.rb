class CreateNews < ActiveRecord::Migration
  def change
    create_table :news do |t|
      t.string :title
      t.string :image
      t.text :description

      t.timestamps
    end
  end
end
