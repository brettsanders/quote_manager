class Quote < ActiveRecord::Base
  attr_accessible :page, :text
  validates :page, presence: true
  validates :text, presence: true
end
