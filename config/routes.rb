Rails.application.routes.draw do

  resources :application_contacts
  resources :application_sponsors
  get 'sponsors/join', to: 'sponsors#new'
  post 'sponsors/join', to: 'sponsors#create'
  #Note that this is handled by root and not the sponsors controller.
  get 'sponsors/', to: 'root#sponsors'

  resources :sponsors, only: [:new, :create]

  #Page to create new users. This is intended for volunteers.
  get 'join/', to: 'users#new'
  post 'join/', to: 'users#create'

  # Routes for login page (i.e. the sessions controller)
  get 'login/', to: 'sessions#new'
  post 'login/', to: 'sessions#create'
  delete 'logout/', to: 'sessions#destroy'

  get 'about/', to: 'root#about'

  get 'members/', to: 'root#members'
  get 'discover/', to: 'root#discover'
  get 'projects/', to: 'root#projects'

  get 'boardofmembers/', to: 'root#boardofmembers'

  #Declares common routes for users.
  #e.g. users/show to users#show
  resources :users

  # delete: moving this to sponsors#show
  #get 'users/:user_id/sponsors', to: 'users#show_sponsors'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'root#index'
end
