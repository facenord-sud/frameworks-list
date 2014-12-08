class FrameworksCategories < ActiveRecord::Migration
  def change
    create_table :frameworks_categories do |t|
      t.belongs_to :framework
      t.belongs_to :category
    end
  end
end
