class Cheatsheet < ApplicationRecord
  validates :title, :body, presence: true
  acts_as_taggable
  CATEGORY_LIST = ["HTML", "CSS", "Ruby on Rails", "Javascript"]
end
