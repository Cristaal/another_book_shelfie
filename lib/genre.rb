class Genre <ActiveRecord::Base
  has_many :titles
  validates :name, presence: true
  before_save :titleize_name


private
  def titleize_name
    self.name=(name.titleize)
  end
end
