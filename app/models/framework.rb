class Framework < ActiveRecord::Base

  belongs_to :user
  has_many :comments
  has_and_belongs_to_many :categories

  validates_presence_of :user
  validates_presence_of :name
  validates_presence_of :description

  def increase_vote
    self.vote += 1
  end

  def decrease_vote
    self.vote -= 1
  end
end
