RailsMongoidDevise::Application.routes.draw do
  authenticated :user do
    root :to => 'home#index'
  end
  root :to => "home#index"
  devise_for :users, path: "", controllers: { registrations: "registrations", sessions: "sessions"}, path_names: { sign_in: 'login', password: 'forgot', sign_up: 'register', sign_out: 'signout'}
  resources :users

  match '/users/save_polygon', to: 'users#save_polygon', via: 'post'
end