class Quote < ActiveRecord::Base
  attr_accessible :page, :text

  has_many :books
  has_many :analyses

  validates :page, presence: true
  validates :text, presence: true

  default_scope order("updated_at DESC")
end
