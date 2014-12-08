class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  before_create :set_username

  has_many :comments
  has_many :frameworks

  def enough_points?
    self.points >= 10
  end

  def to_s
    name
  end

  private
  def set_username
    self.name = (('a'..'z').to_a + ('A'..'Z').to_a + (0 .. 9).to_a).shuffle[0..rand(8..12)].join
  end
end
