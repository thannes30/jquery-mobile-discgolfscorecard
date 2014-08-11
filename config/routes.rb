Rails.application.routes.draw do

resources :users, shallow: true do
  resources :games do
      resources :scores
  end
end

  root "users#index"
  post '/users' => "users#create"
  get 'sessions/new' => 'sessions#new', as: 'log_in'
  post 'sessions' => 'sessions#create'
  get 'sessions/delete' => 'sessions#destroy'
  delete 'sessions' => 'sessions#destroy', as: 'log_out'
  get 'profiles' => 'profiles#index'

# OLD ROUTES
#            Prefix Verb   URI Pattern                               Controller#Action
#     game_scores GET    /games/:game_id/scores(.:format)          scores#index
#                 POST   /games/:game_id/scores(.:format)          scores#create
#  new_game_score GET    /games/:game_id/scores/new(.:format)      scores#new
# edit_game_score GET    /games/:game_id/scores/:id/edit(.:format) scores#edit
#      game_score GET    /games/:game_id/scores/:id(.:format)      scores#show
#                 PATCH  /games/:game_id/scores/:id(.:format)      scores#update
#                 PUT    /games/:game_id/scores/:id(.:format)      scores#update
#                 DELETE /games/:game_id/scores/:id(.:format)      scores#destroy
#           games GET    /games(.:format)                          games#index
#                 POST   /games(.:format)                          games#create
#        new_game GET    /games/new(.:format)                      games#new
#       edit_game GET    /games/:id/edit(.:format)                 games#edit
#            game GET    /games/:id(.:format)                      games#show
#                 PATCH  /games/:id(.:format)                      games#update
#                 PUT    /games/:id(.:format)                      games#update
#                 DELETE /games/:id(.:format)                      games#destroy
#       users_new GET    /users/new(.:format)                      users#new
#           users POST   /users(.:format)                          users#create
#                 GET    /users(.:format)                          users#index
#            root GET    /                                         users#index
#          log_in GET    /sessions/new(.:format)                   sessions#new
#        sessions POST   /sessions(.:format)                       sessions#create
# sessions_delete GET    /sessions/delete(.:format)                sessions#destroy
#         log_out DELETE /sessions(.:format)                       sessions#destroy
#        profiles GET    /profiles(.:format)                       profiles#index

end

#         Prefix Verb   URI Pattern                          Controller#Action
#     game_scores GET    /games/:game_id/scores(.:format)     scores#index
#                 POST   /games/:game_id/scores(.:format)     scores#create
#  new_game_score GET    /games/:game_id/scores/new(.:format) scores#new
#      edit_score GET    /scores/:id/edit(.:format)           scores#edit
#           score GET    /scores/:id(.:format)                scores#show
#                 PATCH  /scores/:id(.:format)                scores#update
#                 PUT    /scores/:id(.:format)                scores#update
#                 DELETE /scores/:id(.:format)                scores#destroy
#      user_games GET    /users/:user_id/games(.:format)      games#index
#                 POST   /users/:user_id/games(.:format)      games#create
#   new_user_game GET    /users/:user_id/games/new(.:format)  games#new
#       edit_game GET    /games/:id/edit(.:format)            games#edit
#            game GET    /games/:id(.:format)                 games#show
#                 PATCH  /games/:id(.:format)                 games#update
#                 PUT    /games/:id(.:format)                 games#update
#                 DELETE /games/:id(.:format)                 games#destroy
#           users GET    /users(.:format)                     users#index
#                 POST   /users(.:format)                     users#create
#        new_user GET    /users/new(.:format)                 users#new
#       edit_user GET    /users/:id/edit(.:format)            users#edit
#            user GET    /users/:id(.:format)                 users#show
#                 PATCH  /users/:id(.:format)                 users#update
#                 PUT    /users/:id(.:format)                 users#update
#                 DELETE /users/:id(.:format)                 users#destroy
#            root GET    /                                    users#index
#                 POST   /users(.:format)                     users#create
#          log_in GET    /sessions/new(.:format)              sessions#new
#        sessions POST   /sessions(.:format)                  sessions#create
# sessions_delete GET    /sessions/delete(.:format)           sessions#destroy
#         log_out DELETE /sessions(.:format)                  sessions#destroy
#        profiles GET    /profiles(.:format)                  profiles#index
