LiquidInterface::Application.routes.draw do |map|

  resources :issues, :only => [:index, :show]
  
  root :to => "dashboard#index"

end
