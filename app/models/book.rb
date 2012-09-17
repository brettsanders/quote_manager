class Book < ActiveRecord::Base
  attr_accessible :analysis_id, :author, :link, :quote_id, :rating_id, :title
end
