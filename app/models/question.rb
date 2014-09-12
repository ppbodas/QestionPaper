class Question < ActiveRecord::Base
  has_many :paper_items 
  before_destroy :ensure_not_referenced_by_any_paper_item
  
def ensure_not_referenced_by_any_paper_item
  if paper_items.empty?
    return true
  else
    errors.add(:base , 'Paper Item Present')
    return false
  end
end
end
