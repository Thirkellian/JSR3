class Page < ActiveRecord::Base
  attr_accessible :title, :slug, :blurb,  :content
  validates :title, presence: true, length: { minimum: 5 }
  validates :slug, presence: true, format: { with: /\A[a-zA-Z-]+\z/}
  validates :content, presence: true, length: { minimum: 10 }

end
