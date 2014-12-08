class FrameworksCategories < ActiveRecord::Migration
  def change
    create_table :categories_frameworks do |t|
      t.belongs_to :framework
      t.belongs_to :category
    end
  end
end
