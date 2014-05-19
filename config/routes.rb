Rails.application.routes.draw do
  resources :games

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'
  get  '/games/new'  => "games#new"
  # post '/games/new' => 'games#create'


#    Prefix Verb   URI Pattern               Controller#Action
#     games GET    /games(.:format)          games#index
#           POST   /games(.:format)          games#create
#  new_game GET    /games/new(.:format)      games#new
# edit_game GET    /games/:id/edit(.:format) games#edit
#      game GET    /games/:id(.:format)      games#show
#           PATCH  /games/:id(.:format)      games#update
#           PUT    /games/:id(.:format)      games#update
#           DELETE /games/:id(.:format)      games#destroy
#      root GET    /                         welcome#index

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
