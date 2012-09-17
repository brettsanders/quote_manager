class Analysis < ActiveRecord::Base
  attr_accessible :text, :kind

  validates :text, presence: true
  validates :kind, presence: true

  before_save :capitalize_attributes

  def text_and_kind
    "#{text} (#{kind})"
  end

  def capitalize_attributes
    self[:text] = self[:text].capitalize
    self[:kind] = self[:kind].capitalize 
  end


end
