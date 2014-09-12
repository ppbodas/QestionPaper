class Paper < ActiveRecord::Base
  has_many :paper_items, :dependent => :destroy
end
