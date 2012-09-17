class Analysis < ActiveRecord::Base
  attr_accessible :text, :kind, :quote_id

  has_many :books
  belongs_to :quote

  validates :text, presence: true
  validates :kind, presence: true

  before_save :capitalize_attributes

  default_scope order("updated_at DESC")

  def text_and_kind
    "#{text} (#{kind})"
  end

  def capitalize_attributes
    self[:text] = self[:text].capitalize
    self[:kind] = self[:kind].capitalize 
  end


end
