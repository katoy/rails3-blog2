class Tag < ActiveRecord::Base
  belongs_to :post, counter_cache: true
  attr_accessible :name
end
