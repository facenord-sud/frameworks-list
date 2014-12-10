class Category < ActiveRecord::Base

  has_and_belongs_to_many :frameworks

  validates_presence_of :name

  def self.search(search_criteria)
    where('name LIKE ?', %"#{search_criteria}%").order('name ASC')
  end
end
