Rails.application.routes.draw do

  get 'contact/', to: 'root#contact'
  get 'about/', to: 'root#about'
  get 'sponsor/', to: 'root#sponsor'
  get 'join/', to: 'root#join'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'root#index'
end
