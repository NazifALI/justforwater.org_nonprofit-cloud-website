Rails.application.routes.draw do

  get 'sponsors/join', to: 'sponsors#new'
  post 'sponsors/join', to: 'sponsors#create'
  #Note that this is handled by root and not the sponsors controller.
  get 'sponsors/', to: 'root#sponsors'

  #Page to create new users. This is intended for volunteers.
  get 'join/', to: 'users#new'
  post 'join/', to: 'users#create'

  # Routes for login page (i.e. the sessions controller)
  get 'login/', to: 'sessions#new'
  post 'login/', to: 'sessions#create'
  delete 'logout/', to: 'sessions#destroy'


  get 'contact/', to: 'root#contact'
  get 'about/', to: 'root#about'

  get 'members/', to: 'root#members'
  get 'discover/', to: 'root#discover'
  get 'projects/', to: 'root#projects'

  get 'boardofmembers/', to: 'root#boardofmembers'

  #Magic Resoure for users...
  resources :users

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'root#index'
end
