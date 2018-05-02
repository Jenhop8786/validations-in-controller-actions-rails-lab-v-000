class Post < ActiveRecord::Base
  validates_presence_of :title
  validates :category, inclusion: { in: %w(Fiction Non-fiction)}
  validates :content, length: { minimum: 100}
end
