class Quote < ActiveRecord::Base
  validates :saying, :presence => true, :length => { :maximum => 150, :minimum => 12}
  validates :author, :presence => true, :length => { :maximum => 50, :minimum => 1 }

  def unique_tag
    abbr = self.author.split(" ").collect do |word|
      word[0]
  end

  abbr.join + '#' + self.id.to_s

  end

end
