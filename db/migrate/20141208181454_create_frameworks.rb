class CreateFrameworks < ActiveRecord::Migration
  def change
    create_table :frameworks do |t|
      t.string :name
      t.text :description
      t.integer :vote, default: 0
      t.belongs_to :user

      t.timestamps
    end
  end
end
