module Liquidfeedback
  class Api
    
    include HTTParty
      
    attr_accessor :api_key
    
    base_uri 'https://lqpp.de/be/api'
    headers  'User-Agent' => 'Liquid Interface 0.0.1'
    format :xml

    def initialize#p(args)
      # @country    = args.delete(:country)
      @api_key    = "vRLGpcJywKWD7Zgmz7By"
    end

    def get_initiatives
      self.class.get("/initiative.html", :query => { :key => @api_key })["initiative_list"]["initiative"]
    end
    
    def sync_initiatives
      Issue.delete_all
            
      get_initiatives.each do |initiative|
        next if initiative["area_id"].to_i == 1
        
        issue = Issue.find_or_create_by(:original_id => initiative["issue_id"].to_i)
        issue.state = initiative["issue_state"].to_s if issue.state.blank?
        issue.population = initiative["issue_population"].to_i if issue.population.blank?
        issue.area = initiative["area_name"].to_s if issue.area.blank?
        issue.save
        
        issue.initiatives.create(
          :original_data => initiative,
          :title => initiative["name"]
        )
      end
    end
    
  end
end