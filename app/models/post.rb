class Post < ActiveRecord::Base
  validates :title, :presence => true
  validates :content, :presence => true

  self.per_page = 5

  has_and_belongs_to_many :tags
  belongs_to :author
end
