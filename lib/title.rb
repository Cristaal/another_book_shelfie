class Title <ActiveRecord::Base
  has_and_belongs_to_many :authors
  has_one :genre
  validates :title, presence: true
  before_save :titleize_name

private
  def titleize_name
    self.title=(title.titleize)
  end
end
