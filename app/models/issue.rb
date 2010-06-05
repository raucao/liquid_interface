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


end