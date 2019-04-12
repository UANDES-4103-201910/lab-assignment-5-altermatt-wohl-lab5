Rails.application.routes.draw do
        resources :events
        resources :eventvenues
        resources :tickets
        resources :tickettypes
        resources :users
         (get) ticket_types/:ticket_types_id/tickets tickettypes#
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
