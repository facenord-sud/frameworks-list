class CreateFrameworks < ActiveRecord::Migration
  def change
    create_table :frameworks do |t|
      t.string :name
      t.text :description
      t.integer :vote

      t.timestamps
    end
  end
end
