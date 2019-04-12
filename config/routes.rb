Rails.application.routes.draw do
        resources :events
        resources :eventvenues
        resources :tickets
        resources :tickettypes
        resources :users
        get ticket_types/:ticket_types_id/tickets tickettypes#index
        get users/:user_id/user_name users#show
        get  users/:user_id/new users#create
        delete users/:user_id/delete users#destroy
        patch/put users/:user_id users#update
        get  tickets/:ticket_id/new tickets#create
        delete tickets/:ticket_id/delete tickets#destroy
        patch/put tickets/:ticket_id tickets#update
        get event_venues/:event_venues_id/new eventvenues#create
        delete event_venues/:event_venues_id/delete eventvenues#destroy
        patch/put event_venues/:event_venues_id eventvenues#update
        get events/:event_id/new events#create
        delete events/:event_id/delete events#destroy
        patch/put events/:event_id events#update
        get  tickettypes/:ticket_type_id/new tickettypes#create
        delete tickettypes/:ticket_type_id/delete tickettypes#destroy
        patch/put tickettypes/:ticket_type_id tickettypes#update
        
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
