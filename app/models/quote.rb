class Quote < ActiveRecord::Base
  attr_accessible :page, :text

  has_many :books, dependent: :destroy
  has_many :analyses, through: :books, dependent: :destroy

  validates :page, presence: true
  validates :text, presence: true
end
