class Todo < ActiveRecord::Base
  attr_accessible :description, :done, :position, :priority, :title
end
