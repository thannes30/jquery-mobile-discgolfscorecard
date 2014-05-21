Rails.application.routes.draw do
  # resources :games
  # resources :scores


  resources :games do
      resources :scores
  end
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'


  # get  '/games/new'  => "games#new"
  # post '/games/new' => 'games#create'
  # get  '/games/:id' =>  'games#show'
  # post '/scores/new' => 'scores#create'
  # get  '/scores/:id' => 'scores#show'
  # get  '/scores' => 'scores#index'

#       Prefix Verb   URI Pattern                Controller#Action
#           games GET    /games(.:format)           games#index
#                 POST   /games(.:format)           games#create
#        new_game GET    /games/new(.:format)       games#new
#       edit_game GET    /games/:id/edit(.:format)  games#edit
#            game GET    /games/:id(.:format)       games#show
#                 PATCH  /games/:id(.:format)       games#update
#                 PUT    /games/:id(.:format)       games#update
#                 DELETE /games/:id(.:format)       games#destroy
#          scores GET    /scores(.:format)          scores#index
#                 POST   /scores(.:format)          scores#create
#       new_score GET    /scores/new(.:format)      scores#new
#      edit_score GET    /scores/:id/edit(.:format) scores#edit
#           score GET    /scores/:id(.:format)      scores#show
#                 PATCH  /scores/:id(.:format)      scores#update
#                 PUT    /scores/:id(.:format)      scores#update
#                 DELETE /scores/:id(.:format)      scores#destroy
#       users_new GET    /users/new(.:format)       users#new
#           users POST   /users(.:format)           users#create
#                 GET    /users(.:format)           users#index
#            root GET    /                          users#index
#          log_in GET    /sessions/new(.:format)    sessions#new
#        sessions POST   /sessions(.:format)        sessions#create
# sessions_delete GET    /sessions/delete(.:format) sessions#destroy
#         log_out DELETE /sessions(.:format)        sessions#destroy
#        profiles GET    /profiles(.:format)        profiles#index

  get '/users/new' => "users#new"
  post '/users' => "users#create"
  get 'users' => "users#index"
  root "users#index"

  get 'sessions/new' => 'sessions#new', as: 'log_in'
  post 'sessions' => 'sessions#create'

  get 'sessions/delete' => 'sessions#destroy'

  delete 'sessions' => 'sessions#destroy', as: 'log_out'

  get 'profiles' => 'profiles#index'

end
