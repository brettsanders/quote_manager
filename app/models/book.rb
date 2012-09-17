class Book < ActiveRecord::Base
  attr_accessible :analysis_id, :author, :link, :quote_id, :rating_id, :title

  belongs_to :quote
  belongs_to :analysis
  belongs_to :rating

  validates :title,       presence: true    
  validates :author,      presence: true   
  validates :link,        presence: true      
  validates :quote_id,    presence: true  
  validates :analysis_id, presence: true 
  validates :rating_id,   presence: true 
end
