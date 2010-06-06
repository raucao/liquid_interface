class Initiative
  
  include Mongoid::Document
  include Mongoid::Timestamps
  
  field :original_data, :type => Hash
  field :title, :type => String
  field :supporter_count, :type => Integer
  field :informed_supporter_count, :type => Integer
  field :positive_votes, :type => Integer
  field :negative_votes, :type => Integer
  field :revoked, :type => DateTime
  
  index :supporter_count
  index :positive_votes
  
  embedded_in :issue, :inverse_of => :initiatives
  
  def revoked?
    !revoked.blank?
  end
  
end