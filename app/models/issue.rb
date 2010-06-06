class Issue

  include Mongoid::Document

  field :original_id, :type => Integer
  field :state,       :type => String
  field :population,  :type => Integer
  field :area,        :type => String
  
  index :original_id
  index :state
  index :population
  
  embeds_many :initiatives
  
  def finished?
    state == "finished"
  end
  
  def initiatives_by_supporters
    self.initiatives.sort {|a,b| b.supporter_count <=> a.supporter_count}
  end
  
  def initiatives_by_votes
    self.initiatives.sort {|a,b| b.positive_votes <=> a.positive_votes}
  end

end