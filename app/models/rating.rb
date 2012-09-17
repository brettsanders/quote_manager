class Rating < ActiveRecord::Base
  attr_accessible :position, :title

  default_scope order("position ASC")
end
