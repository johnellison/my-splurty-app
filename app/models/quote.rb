class Quote < ActiveRecord::Base
  validates :saying, :presence => true, :length => { :maximum => 150, :minimum => 12}
  validates :author, :presence => true, :length => { :maximum => 50, :minimum => 1 }
end
