Rails.application.routes.draw do

  get 'contact/', to: 'root#contact'
  get 'about/', to: 'root#about'
  get 'sponsors/', to: 'root#sponsors'
  get 'members/', to: 'root#members'
  get 'discover/', to: 'root#discover'
  get 'projects/', to: 'root#projects'

  get 'boardofmembers/', to: 'root#boardofmembers'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'root#index'
end
