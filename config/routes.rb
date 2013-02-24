CoolSpots::Application.routes.draw do
  resources :spots, :stats, :guides, :users, :locations
  
  root to: 'welcome#index'
  
  match '/logout', to: 'sessions#destroy'
end
