class Framework < ActiveRecord::Base
  include Searchable

  after_create :import_datas

  scope :index, -> { includes(:categories).includes(:user).order(vote: :desc, created_at: :desc) }
  scope :index_page, ->(page) { page(page).per(24) }

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

  def thirty_comments
    comments.includes(:user).order(created_at: :desc).limit(30)
  end

  private

  def import_datas
    Framework.import
  end
end
