class Initiative
  
  include Mongoid::Document
  include Mongoid::Timestamps
  
  field :original_data, :type => Hash
  field :title, :type => String
  
  embedded_in :issue, :inverse_of => :initiatives
  
end