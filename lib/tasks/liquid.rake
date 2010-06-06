namespace :liquid do
  
  desc "sync issues and initiatives from LiquidFeedback"
  task :sync => :environment do
    lqpp = Liquidfeedback::Api.new
    lqpp.sync_initiatives
  end
  
end